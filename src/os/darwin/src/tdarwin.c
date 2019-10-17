/*
 * Copyright (c) 2019 TAOS Data, Inc. <jhtao@taosdata.com>
 *
 * This program is free software: you can use, redistribute, and/or modify
 * it under the terms of the GNU Affero General Public License, version 3
 * or later ("AGPL"), as published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include <errno.h>
#include <fcntl.h>
#include <ifaddrs.h>
#include <netdb.h>
#include <netinet/in.h>
#include <pthread.h>
#include <signal.h>
#include <stdint.h>
#include <sys/socket.h>
#include <sys/time.h>
#include <sys/types.h>
#include <sys/un.h>
#include <unistd.h>
#include <sys/utsname.h>
#include "tglobalcfg.h"
#include "tlog.h"
#include "tsdb.h"
#include "tutil.h"

char configDir[TSDB_FILENAME_LEN] = "~/TDengine/cfg";
char tsDirectory[TSDB_FILENAME_LEN] = "~/TDengine/data";
char dataDir[TSDB_FILENAME_LEN] = "~/TDengine/data";
char logDir[TSDB_FILENAME_LEN] = "~/TDengine/log";
char scriptDir[TSDB_FILENAME_LEN] = "~/TDengine/script";

#define PROCESS_ITEM 12

typedef struct {
  uint64_t user;
  uint64_t nice;
  uint64_t system;
  uint64_t idle;
} SysCpuInfo;

typedef struct {
  uint64_t utime;   // user time
  uint64_t stime;   // kernel time
  uint64_t cutime;  // all user time
  uint64_t cstime;  // all dead time
} ProcCpuInfo;

static pid_t tsProcId;
static char  tsSysNetFile[] = "/proc/net/dev";
static char  tsSysCpuFile[] = "/proc/stat";
static char  tsProcCpuFile[25] = {0};
static char  tsProcMemFile[25] = {0};
static char  tsProcIOFile[25] = {0};
static float tsPageSizeKB = 0;

int64_t str2int64(char *str) {
  char *endptr = NULL;
  return strtoll(str, &endptr, 10);
}


bool taosGetCardName(char *ip, char *name) {
  struct ifaddrs *ifaddr, *ifa;
  int             family, s;
  char            host[NI_MAXHOST];
  bool            ret = false;

  if (getifaddrs(&ifaddr) == -1) {
    return false;
  }

  /* Walk through linked list, maintaining head pointer so we can free list
   * later */
  for (ifa = ifaddr; ifa != NULL; ifa = ifa->ifa_next) {
    if (ifa->ifa_addr == NULL) continue;

    family = ifa->ifa_addr->sa_family;
    if (family != AF_INET) {
      continue;
    }

    s = getnameinfo(ifa->ifa_addr, (family == AF_INET) ? sizeof(struct sockaddr_in) : sizeof(struct sockaddr_in6), host,
                    NI_MAXHOST, NULL, 0, NI_NUMERICHOST);
    if (s != 0) {
      break;
    }

    if (strcmp(host, ip) == 0) {
      strcpy(name, ifa->ifa_name);
      ret = true;
    }
  }

  freeifaddrs(ifaddr);
  return ret;
}


bool taosReadProcIO(int64_t *readbyte, int64_t *writebyte) {
  FILE *fp = fopen(tsProcIOFile, "r");
  if (fp == NULL) {
    pError("open file:%s failed", tsProcIOFile);
    return false;
  }

  size_t len;
  char * line = NULL;
  char   tmp[10];
  int    readIndex = 0;

  while (!feof(fp)) {
    tfree(line);
    getline(&line, &len, fp);
    if (line == NULL) {
      break;
    }
    if (strstr(line, "rchar:") != NULL) {
      sscanf(line, "%s %ld", tmp, readbyte);
      readIndex++;
    } else if (strstr(line, "wchar:") != NULL) {
      sscanf(line, "%s %ld", tmp, writebyte);
      readIndex++;
    } else {
    }

    if (readIndex >= 2) break;
  }

  tfree(line);
  fclose(fp);

  if (readIndex < 2) {
    pError("read file:%s failed", tsProcIOFile);
    return false;
  }

  return true;
}


ssize_t tsendfile(int dfd, int sfd, off_t *offset, size_t size) {
  size_t  leftbytes = size;
  ssize_t sentbytes;

  while (leftbytes > 0) {
    // TODO : Think to check if file is larger than 1GB
    if (leftbytes > 1000000000) leftbytes = 1000000000;
    sentbytes = sendfile(dfd, sfd, offset, leftbytes,NULL,0);
    if (sentbytes == -1) {
      if (errno == EINTR) {
        continue;
      }
      else {
        return -1;
      }
    }

    leftbytes -= sentbytes;
  }

  return size;
}

bool taosGetProcIO(float *readKB, float *writeKB) {
  static int64_t lastReadbyte = -1;
  static int64_t lastWritebyte = -1;

  int64_t curReadbyte, curWritebyte;

  if (!taosReadProcIO(&curReadbyte, &curWritebyte)) {
    return false;
  }

  if (lastReadbyte == -1 || lastWritebyte == -1) {
    lastReadbyte = curReadbyte;
    lastWritebyte = curWritebyte;
    return false;
  }

  *readKB = (float)((double)(curReadbyte - lastReadbyte) / 1024);
  *writeKB = (float)((double)(curWritebyte - lastWritebyte) / 1024);
  if (*readKB < 0) *readKB = 0;
  if (*writeKB < 0) *writeKB = 0;

  lastReadbyte = curReadbyte;
  lastWritebyte = curWritebyte;

  return true;
}

bool taosGetSysCpuInfo(SysCpuInfo *cpuInfo) {
  FILE *fp = fopen(tsSysCpuFile, "r");
  if (fp == NULL) {
    pError("open file:%s failed", tsSysCpuFile);
    return false;
  }

  size_t len;
  char * line = NULL;
  getline(&line, &len, fp);
  if (line == NULL) {
    pError("read file:%s failed", tsSysCpuFile);
    fclose(fp);
    return false;
  }

  char cpu[10] = {0};
  sscanf(line, "%s %ld %ld %ld %ld", cpu, &cpuInfo->user, &cpuInfo->nice, &cpuInfo->system, &cpuInfo->idle);

  tfree(line);
  fclose(fp);
  return true;
}

bool taosGetProcCpuInfo(ProcCpuInfo *cpuInfo) {
  FILE *fp = fopen(tsProcCpuFile, "r");
  if (fp == NULL) {
    pError("open file:%s failed", tsProcCpuFile);
    return false;
  }

  size_t len;
  char * line = NULL;
  getline(&line, &len, fp);
  if (line == NULL) {
    pError("read file:%s failed", tsProcCpuFile);
    fclose(fp);
    return false;
  }

  for (int i = 0, blank = 0; line[i] != 0; ++i) {
    if (line[i] == ' ') blank++;
    if (blank == PROCESS_ITEM) {
      sscanf(line + i + 1, "%ld %ld %ld %ld", &cpuInfo->utime, &cpuInfo->stime, &cpuInfo->cutime, &cpuInfo->cstime);
      break;
    }
  }

  tfree(line);
  fclose(fp);
  return true;
}

bool taosGetCpuUsage(float *sysCpuUsage, float *procCpuUsage) {
  static uint64_t lastSysUsed = 0;
  static uint64_t lastSysTotal = 0;
  static uint64_t lastProcTotal = 0;

  SysCpuInfo  sysCpu;
  ProcCpuInfo procCpu;
  if (!taosGetSysCpuInfo(&sysCpu)) {
    return false;
  }
  if (!taosGetProcCpuInfo(&procCpu)) {
    return false;
  }

  uint64_t curSysUsed = sysCpu.user + sysCpu.nice + sysCpu.system;
  uint64_t curSysTotal = curSysUsed + sysCpu.idle;
  uint64_t curProcTotal = procCpu.utime + procCpu.stime + procCpu.cutime + procCpu.cstime;

  if (lastSysUsed == 0 || lastSysTotal == 0 || lastProcTotal == 0) {
    lastSysUsed = curSysUsed > 1 ? curSysUsed : 1;
    lastSysTotal = curSysTotal > 1 ? curSysTotal : 1;
    lastProcTotal = curProcTotal > 1 ? curProcTotal : 1;
    return false;
  }

  if (curSysTotal == lastSysTotal) {
    return false;
  }

  *sysCpuUsage = (float)((double)(curSysUsed - lastSysUsed) / (double)(curSysTotal - lastSysTotal) * 100);
  *procCpuUsage = (float)((double)(curProcTotal - lastProcTotal) / (double)(curSysTotal - lastSysTotal) * 100);

  lastSysUsed = curSysUsed;
  lastSysTotal = curSysTotal;
  lastProcTotal = curProcTotal;

  return true;
}



bool taosGetCardInfo(int64_t *bytes) {
  static char tsPublicCard[1000] = {0};
  if (tsPublicCard[0] == 0) {
    if (!taosGetCardName(tsInternalIp, tsPublicCard)) {
      pError("can't get card name from ip:%s", tsInternalIp);
      return false;
    }
    int cardNameLen = (int)strlen(tsPublicCard);
    for (int i = 0; i < cardNameLen; ++i) {
      if (tsPublicCard[i] == ':') {
        tsPublicCard[i] = 0;
        break;
      }
    }
    // pTrace("card name of public ip:%s is %s", tsPublicIp, tsPublicCard);
  }

  FILE *fp = fopen(tsSysNetFile, "r");
  if (fp == NULL) {
    pError("open file:%s failed", tsSysNetFile);
    return false;
  }

  int64_t rbytes, rpackts, tbytes, tpackets;
  int64_t nouse1, nouse2, nouse3, nouse4, nouse5, nouse6;
  char    nouse0[200] = {0};

  size_t len;
  char * line = NULL;

  while (!feof(fp)) {
    tfree(line);
    getline(&line, &len, fp);
    if (line == NULL) {
      break;
    }
    if (strstr(line, tsPublicCard) != NULL) {
      break;
    }
  }
  if (line != NULL) {
    sscanf(line, "%s %ld %ld %ld %ld %ld %ld %ld %ld %ld %ld", nouse0, &rbytes, &rpackts, &nouse1, &nouse2, &nouse3,
           &nouse4, &nouse5, &nouse6, &tbytes, &tpackets);
    *bytes = rbytes + tbytes;
    tfree(line);
    fclose(fp);
    return true;
  } else {
    pWarn("can't get card:%s info from device:%s", tsPublicCard, tsSysNetFile);
    *bytes = 0;
    fclose(fp);
    return false;
  }
}


bool taosGetBandSpeed(float *bandSpeedKb) {
  static int64_t lastBytes = 0;
  static time_t  lastTime = 0;
  int64_t        curBytes = 0;
  time_t         curTime = time(NULL);

  if (!taosGetCardInfo(&curBytes)) {
    return false;
  }

  if (lastTime == 0 || lastBytes == 0) {
    lastTime = curTime;
    lastBytes = curBytes;
    return false;
  }

  if (lastTime >= curTime || lastBytes > curBytes) {
    lastTime = curTime;
    lastBytes = curBytes;
    return false;
  }

  double totalBytes = (double)(curBytes - lastBytes) / 1024 * 8;  // Kb
  *bandSpeedKb = (float)(totalBytes / (double)(curTime - lastTime));

  // pPrint("bandwidth lastBytes:%ld, lastTime:%ld, curBytes:%ld, curTime:%ld,
  // speed:%f", lastBytes, lastTime, curBytes, curTime, *bandSpeed);

  lastTime = curTime;
  lastBytes = curBytes;

  return true;
}


bool taosGetSysMemory(float *memoryUsedMB) {
  float memoryAvailMB = (float)sysconf(_SC_PAGE_SIZE) * tsPageSizeKB / 1024;
  *memoryUsedMB = (float)tsTotalMemoryMB - memoryAvailMB;
  return true;
}

bool taosGetProcMemory(float *memoryUsedMB) {
  FILE *fp = fopen(tsProcMemFile, "r");
  if (fp == NULL) {
    pError("open file:%s failed", tsProcMemFile);
    return false;
  }
}
/*
  to make taosMsleep work,
   signal SIGALRM shall be blocked in the calling thread,

  sigset_t set;
  sigemptyset(&set);
  sigaddset(&set, SIGALRM);
  pthread_sigmask(SIG_BLOCK, &set, NULL);
*/
void taosMsleep(int mseconds) {
  struct timeval timeout;
  int            seconds, useconds;

  seconds = mseconds / 1000;
  useconds = (mseconds % 1000) * 1000;
  timeout.tv_sec = seconds;
  timeout.tv_usec = useconds;

  /* sigset_t set; */
  /* sigemptyset(&set); */
  /* sigaddset(&set, SIGALRM); */
  /* pthread_sigmask(SIG_BLOCK, &set, NULL); */

  select(0, NULL, NULL, NULL, &timeout);

  /* pthread_sigmask(SIG_UNBLOCK, &set, NULL); */
}

bool taosCheckPthreadValid(pthread_t thread) { return thread != 0; }

void taosResetPthread(pthread_t *thread) { *thread = 0; }

int64_t taosGetPthreadId() { return (int64_t)pthread_self(); }

/*
* Function to get the private ip address of current machine. If get IP
* successfully, return 0, else, return -1. The return values is ip.
*
* Use:
* if (taosGetPrivateIp(ip) != 0) {
*     perror("Fail to get private IP address\n");
*     exit(EXIT_FAILURE);
* }
*/
int taosGetPrivateIp(char *const ip) {
  bool hasLoCard = false;

  struct ifaddrs *ifaddr, *ifa;
  int             family, s;
  char            host[NI_MAXHOST];

  if (getifaddrs(&ifaddr) == -1) {
    return -1;
  }

  /* Walk through linked list, maintaining head pointer so we can free list later */
  int flag = 0;
  for (ifa = ifaddr; ifa != NULL; ifa = ifa->ifa_next) {
    if (ifa->ifa_addr == NULL) continue;

    family = ifa->ifa_addr->sa_family;
    if (strcmp("lo", ifa->ifa_name) == 0) {
      hasLoCard = true;
      continue;
    }

    if (family == AF_INET) {
      /* printf("%-8s", ifa->ifa_name); */
      s = getnameinfo(ifa->ifa_addr, (family == AF_INET) ? sizeof(struct sockaddr_in) : sizeof(struct sockaddr_in6),
                      host, NI_MAXHOST, NULL, 0, NI_NUMERICHOST);
      if (s != 0) {
        freeifaddrs(ifaddr);
        return -1;
      }

      strcpy(ip, host);
      flag = 1;
      break;
    }
  }

  freeifaddrs(ifaddr);
  if (flag) {
    return 0;
  } else {
    if (hasLoCard) {
      pPrint("no net card was found, use lo:127.0.0.1 as default");
      strcpy(ip, "127.0.0.1");
      return 0;
    }
    return -1;
  }
}

int taosSetNonblocking(int sock, int on) {
  int flags = 0;
  if ((flags = fcntl(sock, F_GETFL, 0)) < 0) {
    pError("fcntl(F_GETFL) error: %d (%s)\n", errno, strerror(errno));
    return 1;
  }

  if (on)
    flags |= O_NONBLOCK;
  else
    flags &= ~O_NONBLOCK;

  if ((flags = fcntl(sock, F_SETFL, flags)) < 0) {
    pError("fcntl(F_SETFL) error: %d (%s)\n", errno, strerror(errno));
    return 1;
  }

  return 0;
}

int taosSetSockOpt(int socketfd, int level, int optname, void *optval, int optlen) {
  if (level == SOL_SOCKET && optname == SO_SNDBUF) {
    return 0;
  }

  if (level == SOL_SOCKET && optname == SO_RCVBUF) {
    return 0;
  }

  return setsockopt(socketfd, level, optname, optval, (socklen_t)optlen);
}

int taosOpenUDClientSocket(char *ip, short port) {
  int                sockFd = 0;
  struct sockaddr_un serverAddr;
  int                ret;
  char               name[128];
  sprintf(name, "%s.%d", ip, port);

  sockFd = socket(AF_UNIX, SOCK_STREAM, 0);

  if (sockFd < 0) {
    pError("failed to open the UD socket:%s, reason:%s", name, strerror(errno));
    return -1;
  }

  memset((char *)&serverAddr, 0, sizeof(serverAddr));
  serverAddr.sun_family = AF_UNIX;
  strcpy(serverAddr.sun_path + 1, name);

  ret = connect(sockFd, (struct sockaddr *)&serverAddr, sizeof(serverAddr));

  if (ret != 0) {
    pError("failed to connect UD socket, name:%d, reason: %s", name, strerror(errno));
    sockFd = -1;
  }

  return sockFd;
}

int taosOpenUDServerSocket(char *ip, short port) {
  struct sockaddr_un serverAdd;
  int                sockFd;
  char               name[128];

  pTrace("open ud socket:%s", name);
  // if (tsAllowLocalhost) ip = "0.0.0.0";
  sprintf(name, "%s.%d", ip, port);

  bzero((char *)&serverAdd, sizeof(serverAdd));
  serverAdd.sun_family = AF_UNIX;
  strcpy(serverAdd.sun_path + 1, name);
  unlink(name);

  if ((sockFd = socket(AF_UNIX, SOCK_STREAM, 0)) < 0) {
    pError("failed to open UD socket:%s, reason:%s", name, strerror(errno));
    return -1;
  }

  /* bind socket to server address */
  if (bind(sockFd, (struct sockaddr *)&serverAdd, sizeof(serverAdd)) < 0) {
    pError("bind socket:%s failed, reason:%s", name, strerror(errno));
    tclose(sockFd);
    return -1;
  }

  if (listen(sockFd, 10) < 0) {
    pError("listen socket:%s failed, reason:%s", name, strerror(errno));
    return -1;
  }

  return sockFd;
}

int taosInitTimer(void (*callback)(int), int ms) {
  signal(SIGALRM, callback);

  struct itimerval tv;
  tv.it_interval.tv_sec = 0;  /* my timer resolution */
  tv.it_interval.tv_usec = 1000 * ms;  // resolution is in msecond
  tv.it_value = tv.it_interval;

  return setitimer(ITIMER_REAL, &tv, NULL);
}

char *taosCharsetReplace(char *charsetstr) {
  return charsetstr;
}

void taosGetSystemTimezone() {
  // get and set default timezone
  SGlobalConfig *cfg_timezone = tsGetConfigOption("timezone");
  if (cfg_timezone && cfg_timezone->cfgStatus < TSDB_CFG_CSTATUS_DEFAULT) {
    char *tz = getenv("TZ");
    if (tz == NULL || strlen(tz) == 0) {
      strcpy(tsTimezone, "not configured");
    }
    else {
      strcpy(tsTimezone, tz);
    }
    cfg_timezone->cfgStatus = TSDB_CFG_CSTATUS_DEFAULT;
    pPrint("timezone not configured, use default");
  }
}

void taosGetSystemLocale() {
  // get and set default locale
  SGlobalConfig *cfg_locale = tsGetConfigOption("locale");
  if (cfg_locale && cfg_locale->cfgStatus < TSDB_CFG_CSTATUS_DEFAULT) {
    char *locale = setlocale(LC_CTYPE, "chs");
    if (locale != NULL) {
      strncpy(tsLocale, locale, sizeof(tsLocale) / sizeof(tsLocale[0]));
      cfg_locale->cfgStatus = TSDB_CFG_CSTATUS_DEFAULT;
      pPrint("locale not configured, set to default:%s", tsLocale);
    }
  }

  SGlobalConfig *cfg_charset = tsGetConfigOption("charset");
  if (cfg_charset && cfg_charset->cfgStatus < TSDB_CFG_CSTATUS_DEFAULT) {
    strcpy(tsCharset, "cp936");
    cfg_charset->cfgStatus = TSDB_CFG_CSTATUS_DEFAULT;
    pPrint("charset not configured, set to default:%s", tsCharset);
  }
}


void tsPrintOsInfo() {}

void taosKillSystem() {
  tError("function taosKillSystem, exit!");
  exit(0);
}

bool taosGetDisk() {
  return true;
}

void taosGetSystemInfo() {
  taosGetSystemTimezone();
  taosGetSystemLocale();
}

void *taosInitTcpClient(char *ip, short port, char *flabel, int num, void *fp, void *shandle) {
  tError("function taosInitTcpClient is not implemented in darwin system, exit!");
  exit(0);
}

void taosCloseTcpClientConnection(void *chandle) {
  tError("function taosCloseTcpClientConnection is not implemented in darwin system, exit!");
  exit(0);
}

void *taosOpenTcpClientConnection(void *shandle, void *thandle, char *ip, short port) {
  tError("function taosOpenTcpClientConnection is not implemented in darwin system, exit!");
  exit(0);
}

int taosSendTcpClientData(unsigned int ip, short port, char *data, int len, void *chandle) {
  tError("function taosSendTcpClientData is not implemented in darwin system, exit!");
  exit(0);
}

void taosCleanUpTcpClient(void *chandle) {
  tError("function taosCleanUpTcpClient is not implemented in darwin system, exit!");
  exit(0);
}

void taosCloseTcpServerConnection(void *chandle) {
  tError("function taosCloseTcpServerConnection is not implemented in darwin system, exit!");
  exit(0);
}

void taosCleanUpTcpServer(void *handle) {
  tError("function taosCleanUpTcpServer is not implemented in darwin system, exit!");
  exit(0);
}

void *taosInitTcpServer(char *ip, short port, char *label, int numOfThreads, void *fp, void *shandle) {
  tError("function taosInitTcpServer is not implemented in darwin system, exit!");
  exit(0);
}

int taosSendTcpServerData(unsigned int ip, short port, char *data, int len, void *chandle) {
  tError("function taosSendTcpServerData is not implemented in darwin system, exit!");
  exit(0);
}

void taosFreeMsgHdr(void *hdr) {
  tError("function taosFreeMsgHdr is not implemented in darwin system, exit!");
  exit(0);
}

int taosMsgHdrSize(void *hdr) {
  tError("function taosMsgHdrSize is not implemented in darwin system, exit!");
  exit(0);
}

void taosSendMsgHdr(void *hdr, int fd) {
  tError("function taosSendMsgHdr is not implemented in darwin system, exit!");
  exit(0);
}

void taosInitMsgHdr(void **hdr, void *dest, int maxPkts) {
  tError("function taosInitMsgHdr is not implemented in darwin system, exit!");
  exit(0);
}

void taosSetMsgHdrData(void *hdr, char *data, int dataLen) {
  tError("function taosSetMsgHdrData is not implemented in darwin system, exit!");
  exit(0);
}

ssize_t twrite(int fd, void *buf, size_t n) {
  size_t nleft = n; 
  ssize_t nwritten = 0;
  char *tbuf = (char *)buf;

  while (nleft > 0) {
    nwritten = write(fd, (void *)tbuf, nleft);
    if (nwritten < 0) {
      if (errno == EINTR) {
        continue;
      }
      return -1;
    }
    nleft -= nwritten;
    tbuf += nwritten;
  }

  return n;
}

bool taosSkipSocketCheck() {
  return true;
}

int tsem_init(dispatch_semaphore_t *sem, int pshared, unsigned int value) {
  *sem = dispatch_semaphore_create(value);
  if (*sem == NULL) {
    return -1;
  } else {
    return 0;
  }
}

int tsem_wait(dispatch_semaphore_t *sem) {
  dispatch_semaphore_wait(*sem, DISPATCH_TIME_FOREVER);
  return 0;
}

int tsem_post(dispatch_semaphore_t *sem) {
  dispatch_semaphore_signal(*sem);
  return 0;
}

int tsem_destroy(dispatch_semaphore_t *sem) {
  return 0;
}

int32_t __sync_val_load_32(int32_t *ptr) {
  return __atomic_load_n(ptr, __ATOMIC_ACQUIRE);
}

void __sync_val_restore_32(int32_t *ptr, int32_t newval) {
  __atomic_store_n(ptr, newval, __ATOMIC_RELEASE);
}