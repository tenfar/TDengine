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
include src/kit/taosdemo/CMakeFiles/taosdemo.dir/depend.make

# Include the progress variables for this target.
include src/kit/taosdemo/CMakeFiles/taosdemo.dir/progress.make

# Include the compile flags for this target's objects.
include src/kit/taosdemo/CMakeFiles/taosdemo.dir/flags.make

src/kit/taosdemo/CMakeFiles/taosdemo.dir/taosdemo.c.o: src/kit/taosdemo/CMakeFiles/taosdemo.dir/flags.make
src/kit/taosdemo/CMakeFiles/taosdemo.dir/taosdemo.c.o: src/kit/taosdemo/taosdemo.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jason/Dev/TaosData/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/kit/taosdemo/CMakeFiles/taosdemo.dir/taosdemo.c.o"
	cd /Users/jason/Dev/TaosData/src/kit/taosdemo && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/taosdemo.dir/taosdemo.c.o   -c /Users/jason/Dev/TaosData/src/kit/taosdemo/taosdemo.c

src/kit/taosdemo/CMakeFiles/taosdemo.dir/taosdemo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/taosdemo.dir/taosdemo.c.i"
	cd /Users/jason/Dev/TaosData/src/kit/taosdemo && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jason/Dev/TaosData/src/kit/taosdemo/taosdemo.c > CMakeFiles/taosdemo.dir/taosdemo.c.i

src/kit/taosdemo/CMakeFiles/taosdemo.dir/taosdemo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/taosdemo.dir/taosdemo.c.s"
	cd /Users/jason/Dev/TaosData/src/kit/taosdemo && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jason/Dev/TaosData/src/kit/taosdemo/taosdemo.c -o CMakeFiles/taosdemo.dir/taosdemo.c.s

# Object files for target taosdemo
taosdemo_OBJECTS = \
"CMakeFiles/taosdemo.dir/taosdemo.c.o"

# External object files for target taosdemo
taosdemo_EXTERNAL_OBJECTS =

build/bin/taosdemo: src/kit/taosdemo/CMakeFiles/taosdemo.dir/taosdemo.c.o
build/bin/taosdemo: src/kit/taosdemo/CMakeFiles/taosdemo.dir/build.make
build/bin/taosdemo: build/lib/libtaos_static.a
build/bin/taosdemo: build/lib/libtrpc.a
build/bin/taosdemo: build/lib/libtutil.a
build/bin/taosdemo: build/lib/libos.a
build/bin/taosdemo: src/kit/taosdemo/CMakeFiles/taosdemo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jason/Dev/TaosData/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../../../build/bin/taosdemo"
	cd /Users/jason/Dev/TaosData/src/kit/taosdemo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/taosdemo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/kit/taosdemo/CMakeFiles/taosdemo.dir/build: build/bin/taosdemo

.PHONY : src/kit/taosdemo/CMakeFiles/taosdemo.dir/build

src/kit/taosdemo/CMakeFiles/taosdemo.dir/clean:
	cd /Users/jason/Dev/TaosData/src/kit/taosdemo && $(CMAKE_COMMAND) -P CMakeFiles/taosdemo.dir/cmake_clean.cmake
.PHONY : src/kit/taosdemo/CMakeFiles/taosdemo.dir/clean

src/kit/taosdemo/CMakeFiles/taosdemo.dir/depend:
	cd /Users/jason/Dev/TaosData && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jason/Dev/TaosData /Users/jason/Dev/TaosData/src/kit/taosdemo /Users/jason/Dev/TaosData /Users/jason/Dev/TaosData/src/kit/taosdemo /Users/jason/Dev/TaosData/src/kit/taosdemo/CMakeFiles/taosdemo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/kit/taosdemo/CMakeFiles/taosdemo.dir/depend

