# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.15.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.15.3/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jason/Dev/TaosData

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jason/Dev/TaosData

# Include any dependencies generated for this target.
include src/modules/http/CMakeFiles/http.dir/depend.make

# Include the progress variables for this target.
include src/modules/http/CMakeFiles/http.dir/progress.make

# Include the compile flags for this target's objects.
include src/modules/http/CMakeFiles/http.dir/flags.make

src/modules/http/CMakeFiles/http.dir/src/cJSON.c.o: src/modules/http/CMakeFiles/http.dir/flags.make
src/modules/http/CMakeFiles/http.dir/src/cJSON.c.o: src/modules/http/src/cJSON.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jason/Dev/TaosData/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/modules/http/CMakeFiles/http.dir/src/cJSON.c.o"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/http.dir/src/cJSON.c.o   -c /Users/jason/Dev/TaosData/src/modules/http/src/cJSON.c

src/modules/http/CMakeFiles/http.dir/src/cJSON.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/http.dir/src/cJSON.c.i"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jason/Dev/TaosData/src/modules/http/src/cJSON.c > CMakeFiles/http.dir/src/cJSON.c.i

src/modules/http/CMakeFiles/http.dir/src/cJSON.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/http.dir/src/cJSON.c.s"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jason/Dev/TaosData/src/modules/http/src/cJSON.c -o CMakeFiles/http.dir/src/cJSON.c.s

src/modules/http/CMakeFiles/http.dir/src/gcHandle.c.o: src/modules/http/CMakeFiles/http.dir/flags.make
src/modules/http/CMakeFiles/http.dir/src/gcHandle.c.o: src/modules/http/src/gcHandle.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jason/Dev/TaosData/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/modules/http/CMakeFiles/http.dir/src/gcHandle.c.o"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/http.dir/src/gcHandle.c.o   -c /Users/jason/Dev/TaosData/src/modules/http/src/gcHandle.c

src/modules/http/CMakeFiles/http.dir/src/gcHandle.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/http.dir/src/gcHandle.c.i"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jason/Dev/TaosData/src/modules/http/src/gcHandle.c > CMakeFiles/http.dir/src/gcHandle.c.i

src/modules/http/CMakeFiles/http.dir/src/gcHandle.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/http.dir/src/gcHandle.c.s"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jason/Dev/TaosData/src/modules/http/src/gcHandle.c -o CMakeFiles/http.dir/src/gcHandle.c.s

src/modules/http/CMakeFiles/http.dir/src/gcJson.c.o: src/modules/http/CMakeFiles/http.dir/flags.make
src/modules/http/CMakeFiles/http.dir/src/gcJson.c.o: src/modules/http/src/gcJson.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jason/Dev/TaosData/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object src/modules/http/CMakeFiles/http.dir/src/gcJson.c.o"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/http.dir/src/gcJson.c.o   -c /Users/jason/Dev/TaosData/src/modules/http/src/gcJson.c

src/modules/http/CMakeFiles/http.dir/src/gcJson.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/http.dir/src/gcJson.c.i"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jason/Dev/TaosData/src/modules/http/src/gcJson.c > CMakeFiles/http.dir/src/gcJson.c.i

src/modules/http/CMakeFiles/http.dir/src/gcJson.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/http.dir/src/gcJson.c.s"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jason/Dev/TaosData/src/modules/http/src/gcJson.c -o CMakeFiles/http.dir/src/gcJson.c.s

src/modules/http/CMakeFiles/http.dir/src/httpAuth.c.o: src/modules/http/CMakeFiles/http.dir/flags.make
src/modules/http/CMakeFiles/http.dir/src/httpAuth.c.o: src/modules/http/src/httpAuth.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jason/Dev/TaosData/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object src/modules/http/CMakeFiles/http.dir/src/httpAuth.c.o"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/http.dir/src/httpAuth.c.o   -c /Users/jason/Dev/TaosData/src/modules/http/src/httpAuth.c

src/modules/http/CMakeFiles/http.dir/src/httpAuth.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/http.dir/src/httpAuth.c.i"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jason/Dev/TaosData/src/modules/http/src/httpAuth.c > CMakeFiles/http.dir/src/httpAuth.c.i

src/modules/http/CMakeFiles/http.dir/src/httpAuth.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/http.dir/src/httpAuth.c.s"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jason/Dev/TaosData/src/modules/http/src/httpAuth.c -o CMakeFiles/http.dir/src/httpAuth.c.s

src/modules/http/CMakeFiles/http.dir/src/httpCode.c.o: src/modules/http/CMakeFiles/http.dir/flags.make
src/modules/http/CMakeFiles/http.dir/src/httpCode.c.o: src/modules/http/src/httpCode.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jason/Dev/TaosData/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object src/modules/http/CMakeFiles/http.dir/src/httpCode.c.o"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/http.dir/src/httpCode.c.o   -c /Users/jason/Dev/TaosData/src/modules/http/src/httpCode.c

src/modules/http/CMakeFiles/http.dir/src/httpCode.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/http.dir/src/httpCode.c.i"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jason/Dev/TaosData/src/modules/http/src/httpCode.c > CMakeFiles/http.dir/src/httpCode.c.i

src/modules/http/CMakeFiles/http.dir/src/httpCode.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/http.dir/src/httpCode.c.s"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jason/Dev/TaosData/src/modules/http/src/httpCode.c -o CMakeFiles/http.dir/src/httpCode.c.s

src/modules/http/CMakeFiles/http.dir/src/httpHandle.c.o: src/modules/http/CMakeFiles/http.dir/flags.make
src/modules/http/CMakeFiles/http.dir/src/httpHandle.c.o: src/modules/http/src/httpHandle.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jason/Dev/TaosData/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object src/modules/http/CMakeFiles/http.dir/src/httpHandle.c.o"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/http.dir/src/httpHandle.c.o   -c /Users/jason/Dev/TaosData/src/modules/http/src/httpHandle.c

src/modules/http/CMakeFiles/http.dir/src/httpHandle.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/http.dir/src/httpHandle.c.i"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jason/Dev/TaosData/src/modules/http/src/httpHandle.c > CMakeFiles/http.dir/src/httpHandle.c.i

src/modules/http/CMakeFiles/http.dir/src/httpHandle.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/http.dir/src/httpHandle.c.s"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jason/Dev/TaosData/src/modules/http/src/httpHandle.c -o CMakeFiles/http.dir/src/httpHandle.c.s

src/modules/http/CMakeFiles/http.dir/src/httpJson.c.o: src/modules/http/CMakeFiles/http.dir/flags.make
src/modules/http/CMakeFiles/http.dir/src/httpJson.c.o: src/modules/http/src/httpJson.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jason/Dev/TaosData/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object src/modules/http/CMakeFiles/http.dir/src/httpJson.c.o"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/http.dir/src/httpJson.c.o   -c /Users/jason/Dev/TaosData/src/modules/http/src/httpJson.c

src/modules/http/CMakeFiles/http.dir/src/httpJson.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/http.dir/src/httpJson.c.i"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jason/Dev/TaosData/src/modules/http/src/httpJson.c > CMakeFiles/http.dir/src/httpJson.c.i

src/modules/http/CMakeFiles/http.dir/src/httpJson.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/http.dir/src/httpJson.c.s"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jason/Dev/TaosData/src/modules/http/src/httpJson.c -o CMakeFiles/http.dir/src/httpJson.c.s

src/modules/http/CMakeFiles/http.dir/src/httpResp.c.o: src/modules/http/CMakeFiles/http.dir/flags.make
src/modules/http/CMakeFiles/http.dir/src/httpResp.c.o: src/modules/http/src/httpResp.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jason/Dev/TaosData/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object src/modules/http/CMakeFiles/http.dir/src/httpResp.c.o"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/http.dir/src/httpResp.c.o   -c /Users/jason/Dev/TaosData/src/modules/http/src/httpResp.c

src/modules/http/CMakeFiles/http.dir/src/httpResp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/http.dir/src/httpResp.c.i"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jason/Dev/TaosData/src/modules/http/src/httpResp.c > CMakeFiles/http.dir/src/httpResp.c.i

src/modules/http/CMakeFiles/http.dir/src/httpResp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/http.dir/src/httpResp.c.s"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jason/Dev/TaosData/src/modules/http/src/httpResp.c -o CMakeFiles/http.dir/src/httpResp.c.s

src/modules/http/CMakeFiles/http.dir/src/httpServer.c.o: src/modules/http/CMakeFiles/http.dir/flags.make
src/modules/http/CMakeFiles/http.dir/src/httpServer.c.o: src/modules/http/src/httpServer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jason/Dev/TaosData/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object src/modules/http/CMakeFiles/http.dir/src/httpServer.c.o"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/http.dir/src/httpServer.c.o   -c /Users/jason/Dev/TaosData/src/modules/http/src/httpServer.c

src/modules/http/CMakeFiles/http.dir/src/httpServer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/http.dir/src/httpServer.c.i"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jason/Dev/TaosData/src/modules/http/src/httpServer.c > CMakeFiles/http.dir/src/httpServer.c.i

src/modules/http/CMakeFiles/http.dir/src/httpServer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/http.dir/src/httpServer.c.s"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jason/Dev/TaosData/src/modules/http/src/httpServer.c -o CMakeFiles/http.dir/src/httpServer.c.s

src/modules/http/CMakeFiles/http.dir/src/httpSession.c.o: src/modules/http/CMakeFiles/http.dir/flags.make
src/modules/http/CMakeFiles/http.dir/src/httpSession.c.o: src/modules/http/src/httpSession.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jason/Dev/TaosData/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object src/modules/http/CMakeFiles/http.dir/src/httpSession.c.o"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/http.dir/src/httpSession.c.o   -c /Users/jason/Dev/TaosData/src/modules/http/src/httpSession.c

src/modules/http/CMakeFiles/http.dir/src/httpSession.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/http.dir/src/httpSession.c.i"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jason/Dev/TaosData/src/modules/http/src/httpSession.c > CMakeFiles/http.dir/src/httpSession.c.i

src/modules/http/CMakeFiles/http.dir/src/httpSession.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/http.dir/src/httpSession.c.s"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jason/Dev/TaosData/src/modules/http/src/httpSession.c -o CMakeFiles/http.dir/src/httpSession.c.s

src/modules/http/CMakeFiles/http.dir/src/httpSql.c.o: src/modules/http/CMakeFiles/http.dir/flags.make
src/modules/http/CMakeFiles/http.dir/src/httpSql.c.o: src/modules/http/src/httpSql.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jason/Dev/TaosData/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object src/modules/http/CMakeFiles/http.dir/src/httpSql.c.o"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/http.dir/src/httpSql.c.o   -c /Users/jason/Dev/TaosData/src/modules/http/src/httpSql.c

src/modules/http/CMakeFiles/http.dir/src/httpSql.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/http.dir/src/httpSql.c.i"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jason/Dev/TaosData/src/modules/http/src/httpSql.c > CMakeFiles/http.dir/src/httpSql.c.i

src/modules/http/CMakeFiles/http.dir/src/httpSql.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/http.dir/src/httpSql.c.s"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jason/Dev/TaosData/src/modules/http/src/httpSql.c -o CMakeFiles/http.dir/src/httpSql.c.s

src/modules/http/CMakeFiles/http.dir/src/httpSystem.c.o: src/modules/http/CMakeFiles/http.dir/flags.make
src/modules/http/CMakeFiles/http.dir/src/httpSystem.c.o: src/modules/http/src/httpSystem.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jason/Dev/TaosData/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object src/modules/http/CMakeFiles/http.dir/src/httpSystem.c.o"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/http.dir/src/httpSystem.c.o   -c /Users/jason/Dev/TaosData/src/modules/http/src/httpSystem.c

src/modules/http/CMakeFiles/http.dir/src/httpSystem.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/http.dir/src/httpSystem.c.i"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jason/Dev/TaosData/src/modules/http/src/httpSystem.c > CMakeFiles/http.dir/src/httpSystem.c.i

src/modules/http/CMakeFiles/http.dir/src/httpSystem.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/http.dir/src/httpSystem.c.s"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jason/Dev/TaosData/src/modules/http/src/httpSystem.c -o CMakeFiles/http.dir/src/httpSystem.c.s

src/modules/http/CMakeFiles/http.dir/src/httpUtil.c.o: src/modules/http/CMakeFiles/http.dir/flags.make
src/modules/http/CMakeFiles/http.dir/src/httpUtil.c.o: src/modules/http/src/httpUtil.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jason/Dev/TaosData/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object src/modules/http/CMakeFiles/http.dir/src/httpUtil.c.o"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/http.dir/src/httpUtil.c.o   -c /Users/jason/Dev/TaosData/src/modules/http/src/httpUtil.c

src/modules/http/CMakeFiles/http.dir/src/httpUtil.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/http.dir/src/httpUtil.c.i"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jason/Dev/TaosData/src/modules/http/src/httpUtil.c > CMakeFiles/http.dir/src/httpUtil.c.i

src/modules/http/CMakeFiles/http.dir/src/httpUtil.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/http.dir/src/httpUtil.c.s"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jason/Dev/TaosData/src/modules/http/src/httpUtil.c -o CMakeFiles/http.dir/src/httpUtil.c.s

src/modules/http/CMakeFiles/http.dir/src/restHandle.c.o: src/modules/http/CMakeFiles/http.dir/flags.make
src/modules/http/CMakeFiles/http.dir/src/restHandle.c.o: src/modules/http/src/restHandle.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jason/Dev/TaosData/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object src/modules/http/CMakeFiles/http.dir/src/restHandle.c.o"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/http.dir/src/restHandle.c.o   -c /Users/jason/Dev/TaosData/src/modules/http/src/restHandle.c

src/modules/http/CMakeFiles/http.dir/src/restHandle.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/http.dir/src/restHandle.c.i"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jason/Dev/TaosData/src/modules/http/src/restHandle.c > CMakeFiles/http.dir/src/restHandle.c.i

src/modules/http/CMakeFiles/http.dir/src/restHandle.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/http.dir/src/restHandle.c.s"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jason/Dev/TaosData/src/modules/http/src/restHandle.c -o CMakeFiles/http.dir/src/restHandle.c.s

src/modules/http/CMakeFiles/http.dir/src/restJson.c.o: src/modules/http/CMakeFiles/http.dir/flags.make
src/modules/http/CMakeFiles/http.dir/src/restJson.c.o: src/modules/http/src/restJson.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jason/Dev/TaosData/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object src/modules/http/CMakeFiles/http.dir/src/restJson.c.o"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/http.dir/src/restJson.c.o   -c /Users/jason/Dev/TaosData/src/modules/http/src/restJson.c

src/modules/http/CMakeFiles/http.dir/src/restJson.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/http.dir/src/restJson.c.i"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jason/Dev/TaosData/src/modules/http/src/restJson.c > CMakeFiles/http.dir/src/restJson.c.i

src/modules/http/CMakeFiles/http.dir/src/restJson.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/http.dir/src/restJson.c.s"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jason/Dev/TaosData/src/modules/http/src/restJson.c -o CMakeFiles/http.dir/src/restJson.c.s

src/modules/http/CMakeFiles/http.dir/src/tgHandle.c.o: src/modules/http/CMakeFiles/http.dir/flags.make
src/modules/http/CMakeFiles/http.dir/src/tgHandle.c.o: src/modules/http/src/tgHandle.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jason/Dev/TaosData/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building C object src/modules/http/CMakeFiles/http.dir/src/tgHandle.c.o"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/http.dir/src/tgHandle.c.o   -c /Users/jason/Dev/TaosData/src/modules/http/src/tgHandle.c

src/modules/http/CMakeFiles/http.dir/src/tgHandle.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/http.dir/src/tgHandle.c.i"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jason/Dev/TaosData/src/modules/http/src/tgHandle.c > CMakeFiles/http.dir/src/tgHandle.c.i

src/modules/http/CMakeFiles/http.dir/src/tgHandle.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/http.dir/src/tgHandle.c.s"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jason/Dev/TaosData/src/modules/http/src/tgHandle.c -o CMakeFiles/http.dir/src/tgHandle.c.s

src/modules/http/CMakeFiles/http.dir/src/tgJson.c.o: src/modules/http/CMakeFiles/http.dir/flags.make
src/modules/http/CMakeFiles/http.dir/src/tgJson.c.o: src/modules/http/src/tgJson.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jason/Dev/TaosData/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building C object src/modules/http/CMakeFiles/http.dir/src/tgJson.c.o"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/http.dir/src/tgJson.c.o   -c /Users/jason/Dev/TaosData/src/modules/http/src/tgJson.c

src/modules/http/CMakeFiles/http.dir/src/tgJson.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/http.dir/src/tgJson.c.i"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jason/Dev/TaosData/src/modules/http/src/tgJson.c > CMakeFiles/http.dir/src/tgJson.c.i

src/modules/http/CMakeFiles/http.dir/src/tgJson.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/http.dir/src/tgJson.c.s"
	cd /Users/jason/Dev/TaosData/src/modules/http && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jason/Dev/TaosData/src/modules/http/src/tgJson.c -o CMakeFiles/http.dir/src/tgJson.c.s

# Object files for target http
http_OBJECTS = \
"CMakeFiles/http.dir/src/cJSON.c.o" \
"CMakeFiles/http.dir/src/gcHandle.c.o" \
"CMakeFiles/http.dir/src/gcJson.c.o" \
"CMakeFiles/http.dir/src/httpAuth.c.o" \
"CMakeFiles/http.dir/src/httpCode.c.o" \
"CMakeFiles/http.dir/src/httpHandle.c.o" \
"CMakeFiles/http.dir/src/httpJson.c.o" \
"CMakeFiles/http.dir/src/httpResp.c.o" \
"CMakeFiles/http.dir/src/httpServer.c.o" \
"CMakeFiles/http.dir/src/httpSession.c.o" \
"CMakeFiles/http.dir/src/httpSql.c.o" \
"CMakeFiles/http.dir/src/httpSystem.c.o" \
"CMakeFiles/http.dir/src/httpUtil.c.o" \
"CMakeFiles/http.dir/src/restHandle.c.o" \
"CMakeFiles/http.dir/src/restJson.c.o" \
"CMakeFiles/http.dir/src/tgHandle.c.o" \
"CMakeFiles/http.dir/src/tgJson.c.o"

# External object files for target http
http_EXTERNAL_OBJECTS =

build/lib/libhttp.a: src/modules/http/CMakeFiles/http.dir/src/cJSON.c.o
build/lib/libhttp.a: src/modules/http/CMakeFiles/http.dir/src/gcHandle.c.o
build/lib/libhttp.a: src/modules/http/CMakeFiles/http.dir/src/gcJson.c.o
build/lib/libhttp.a: src/modules/http/CMakeFiles/http.dir/src/httpAuth.c.o
build/lib/libhttp.a: src/modules/http/CMakeFiles/http.dir/src/httpCode.c.o
build/lib/libhttp.a: src/modules/http/CMakeFiles/http.dir/src/httpHandle.c.o
build/lib/libhttp.a: src/modules/http/CMakeFiles/http.dir/src/httpJson.c.o
build/lib/libhttp.a: src/modules/http/CMakeFiles/http.dir/src/httpResp.c.o
build/lib/libhttp.a: src/modules/http/CMakeFiles/http.dir/src/httpServer.c.o
build/lib/libhttp.a: src/modules/http/CMakeFiles/http.dir/src/httpSession.c.o
build/lib/libhttp.a: src/modules/http/CMakeFiles/http.dir/src/httpSql.c.o
build/lib/libhttp.a: src/modules/http/CMakeFiles/http.dir/src/httpSystem.c.o
build/lib/libhttp.a: src/modules/http/CMakeFiles/http.dir/src/httpUtil.c.o
build/lib/libhttp.a: src/modules/http/CMakeFiles/http.dir/src/restHandle.c.o
build/lib/libhttp.a: src/modules/http/CMakeFiles/http.dir/src/restJson.c.o
build/lib/libhttp.a: src/modules/http/CMakeFiles/http.dir/src/tgHandle.c.o
build/lib/libhttp.a: src/modules/http/CMakeFiles/http.dir/src/tgJson.c.o
build/lib/libhttp.a: src/modules/http/CMakeFiles/http.dir/build.make
build/lib/libhttp.a: src/modules/http/CMakeFiles/http.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jason/Dev/TaosData/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Linking C static library ../../../build/lib/libhttp.a"
	cd /Users/jason/Dev/TaosData/src/modules/http && $(CMAKE_COMMAND) -P CMakeFiles/http.dir/cmake_clean_target.cmake
	cd /Users/jason/Dev/TaosData/src/modules/http && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/http.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/modules/http/CMakeFiles/http.dir/build: build/lib/libhttp.a

.PHONY : src/modules/http/CMakeFiles/http.dir/build

src/modules/http/CMakeFiles/http.dir/clean:
	cd /Users/jason/Dev/TaosData/src/modules/http && $(CMAKE_COMMAND) -P CMakeFiles/http.dir/cmake_clean.cmake
.PHONY : src/modules/http/CMakeFiles/http.dir/clean

src/modules/http/CMakeFiles/http.dir/depend:
	cd /Users/jason/Dev/TaosData && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jason/Dev/TaosData /Users/jason/Dev/TaosData/src/modules/http /Users/jason/Dev/TaosData /Users/jason/Dev/TaosData/src/modules/http /Users/jason/Dev/TaosData/src/modules/http/CMakeFiles/http.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/modules/http/CMakeFiles/http.dir/depend

