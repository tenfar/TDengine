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
include src/modules/monitor/CMakeFiles/monitor.dir/depend.make

# Include the progress variables for this target.
include src/modules/monitor/CMakeFiles/monitor.dir/progress.make

# Include the compile flags for this target's objects.
include src/modules/monitor/CMakeFiles/monitor.dir/flags.make

src/modules/monitor/CMakeFiles/monitor.dir/src/monitorSystem.c.o: src/modules/monitor/CMakeFiles/monitor.dir/flags.make
src/modules/monitor/CMakeFiles/monitor.dir/src/monitorSystem.c.o: src/modules/monitor/src/monitorSystem.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jason/Dev/TaosData/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/modules/monitor/CMakeFiles/monitor.dir/src/monitorSystem.c.o"
	cd /Users/jason/Dev/TaosData/src/modules/monitor && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/monitor.dir/src/monitorSystem.c.o   -c /Users/jason/Dev/TaosData/src/modules/monitor/src/monitorSystem.c

src/modules/monitor/CMakeFiles/monitor.dir/src/monitorSystem.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/monitor.dir/src/monitorSystem.c.i"
	cd /Users/jason/Dev/TaosData/src/modules/monitor && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jason/Dev/TaosData/src/modules/monitor/src/monitorSystem.c > CMakeFiles/monitor.dir/src/monitorSystem.c.i

src/modules/monitor/CMakeFiles/monitor.dir/src/monitorSystem.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/monitor.dir/src/monitorSystem.c.s"
	cd /Users/jason/Dev/TaosData/src/modules/monitor && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jason/Dev/TaosData/src/modules/monitor/src/monitorSystem.c -o CMakeFiles/monitor.dir/src/monitorSystem.c.s

# Object files for target monitor
monitor_OBJECTS = \
"CMakeFiles/monitor.dir/src/monitorSystem.c.o"

# External object files for target monitor
monitor_EXTERNAL_OBJECTS =

build/lib/libmonitor.a: src/modules/monitor/CMakeFiles/monitor.dir/src/monitorSystem.c.o
build/lib/libmonitor.a: src/modules/monitor/CMakeFiles/monitor.dir/build.make
build/lib/libmonitor.a: src/modules/monitor/CMakeFiles/monitor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jason/Dev/TaosData/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library ../../../build/lib/libmonitor.a"
	cd /Users/jason/Dev/TaosData/src/modules/monitor && $(CMAKE_COMMAND) -P CMakeFiles/monitor.dir/cmake_clean_target.cmake
	cd /Users/jason/Dev/TaosData/src/modules/monitor && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/monitor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/modules/monitor/CMakeFiles/monitor.dir/build: build/lib/libmonitor.a

.PHONY : src/modules/monitor/CMakeFiles/monitor.dir/build

src/modules/monitor/CMakeFiles/monitor.dir/clean:
	cd /Users/jason/Dev/TaosData/src/modules/monitor && $(CMAKE_COMMAND) -P CMakeFiles/monitor.dir/cmake_clean.cmake
.PHONY : src/modules/monitor/CMakeFiles/monitor.dir/clean

src/modules/monitor/CMakeFiles/monitor.dir/depend:
	cd /Users/jason/Dev/TaosData && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jason/Dev/TaosData /Users/jason/Dev/TaosData/src/modules/monitor /Users/jason/Dev/TaosData /Users/jason/Dev/TaosData/src/modules/monitor /Users/jason/Dev/TaosData/src/modules/monitor/CMakeFiles/monitor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/modules/monitor/CMakeFiles/monitor.dir/depend
