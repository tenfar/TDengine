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
include src/sdb/CMakeFiles/sdb.dir/depend.make

# Include the progress variables for this target.
include src/sdb/CMakeFiles/sdb.dir/progress.make

# Include the compile flags for this target's objects.
include src/sdb/CMakeFiles/sdb.dir/flags.make

src/sdb/CMakeFiles/sdb.dir/src/hashint.c.o: src/sdb/CMakeFiles/sdb.dir/flags.make
src/sdb/CMakeFiles/sdb.dir/src/hashint.c.o: src/sdb/src/hashint.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jason/Dev/TaosData/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/sdb/CMakeFiles/sdb.dir/src/hashint.c.o"
	cd /Users/jason/Dev/TaosData/src/sdb && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sdb.dir/src/hashint.c.o   -c /Users/jason/Dev/TaosData/src/sdb/src/hashint.c

src/sdb/CMakeFiles/sdb.dir/src/hashint.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sdb.dir/src/hashint.c.i"
	cd /Users/jason/Dev/TaosData/src/sdb && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jason/Dev/TaosData/src/sdb/src/hashint.c > CMakeFiles/sdb.dir/src/hashint.c.i

src/sdb/CMakeFiles/sdb.dir/src/hashint.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sdb.dir/src/hashint.c.s"
	cd /Users/jason/Dev/TaosData/src/sdb && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jason/Dev/TaosData/src/sdb/src/hashint.c -o CMakeFiles/sdb.dir/src/hashint.c.s

src/sdb/CMakeFiles/sdb.dir/src/hashstr.c.o: src/sdb/CMakeFiles/sdb.dir/flags.make
src/sdb/CMakeFiles/sdb.dir/src/hashstr.c.o: src/sdb/src/hashstr.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jason/Dev/TaosData/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/sdb/CMakeFiles/sdb.dir/src/hashstr.c.o"
	cd /Users/jason/Dev/TaosData/src/sdb && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sdb.dir/src/hashstr.c.o   -c /Users/jason/Dev/TaosData/src/sdb/src/hashstr.c

src/sdb/CMakeFiles/sdb.dir/src/hashstr.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sdb.dir/src/hashstr.c.i"
	cd /Users/jason/Dev/TaosData/src/sdb && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jason/Dev/TaosData/src/sdb/src/hashstr.c > CMakeFiles/sdb.dir/src/hashstr.c.i

src/sdb/CMakeFiles/sdb.dir/src/hashstr.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sdb.dir/src/hashstr.c.s"
	cd /Users/jason/Dev/TaosData/src/sdb && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jason/Dev/TaosData/src/sdb/src/hashstr.c -o CMakeFiles/sdb.dir/src/hashstr.c.s

src/sdb/CMakeFiles/sdb.dir/src/sdbEngine.c.o: src/sdb/CMakeFiles/sdb.dir/flags.make
src/sdb/CMakeFiles/sdb.dir/src/sdbEngine.c.o: src/sdb/src/sdbEngine.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jason/Dev/TaosData/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object src/sdb/CMakeFiles/sdb.dir/src/sdbEngine.c.o"
	cd /Users/jason/Dev/TaosData/src/sdb && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sdb.dir/src/sdbEngine.c.o   -c /Users/jason/Dev/TaosData/src/sdb/src/sdbEngine.c

src/sdb/CMakeFiles/sdb.dir/src/sdbEngine.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sdb.dir/src/sdbEngine.c.i"
	cd /Users/jason/Dev/TaosData/src/sdb && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jason/Dev/TaosData/src/sdb/src/sdbEngine.c > CMakeFiles/sdb.dir/src/sdbEngine.c.i

src/sdb/CMakeFiles/sdb.dir/src/sdbEngine.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sdb.dir/src/sdbEngine.c.s"
	cd /Users/jason/Dev/TaosData/src/sdb && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jason/Dev/TaosData/src/sdb/src/sdbEngine.c -o CMakeFiles/sdb.dir/src/sdbEngine.c.s

src/sdb/CMakeFiles/sdb.dir/src/sdbstr.c.o: src/sdb/CMakeFiles/sdb.dir/flags.make
src/sdb/CMakeFiles/sdb.dir/src/sdbstr.c.o: src/sdb/src/sdbstr.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jason/Dev/TaosData/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object src/sdb/CMakeFiles/sdb.dir/src/sdbstr.c.o"
	cd /Users/jason/Dev/TaosData/src/sdb && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sdb.dir/src/sdbstr.c.o   -c /Users/jason/Dev/TaosData/src/sdb/src/sdbstr.c

src/sdb/CMakeFiles/sdb.dir/src/sdbstr.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sdb.dir/src/sdbstr.c.i"
	cd /Users/jason/Dev/TaosData/src/sdb && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jason/Dev/TaosData/src/sdb/src/sdbstr.c > CMakeFiles/sdb.dir/src/sdbstr.c.i

src/sdb/CMakeFiles/sdb.dir/src/sdbstr.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sdb.dir/src/sdbstr.c.s"
	cd /Users/jason/Dev/TaosData/src/sdb && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jason/Dev/TaosData/src/sdb/src/sdbstr.c -o CMakeFiles/sdb.dir/src/sdbstr.c.s

# Object files for target sdb
sdb_OBJECTS = \
"CMakeFiles/sdb.dir/src/hashint.c.o" \
"CMakeFiles/sdb.dir/src/hashstr.c.o" \
"CMakeFiles/sdb.dir/src/sdbEngine.c.o" \
"CMakeFiles/sdb.dir/src/sdbstr.c.o"

# External object files for target sdb
sdb_EXTERNAL_OBJECTS =

build/lib/libsdb.a: src/sdb/CMakeFiles/sdb.dir/src/hashint.c.o
build/lib/libsdb.a: src/sdb/CMakeFiles/sdb.dir/src/hashstr.c.o
build/lib/libsdb.a: src/sdb/CMakeFiles/sdb.dir/src/sdbEngine.c.o
build/lib/libsdb.a: src/sdb/CMakeFiles/sdb.dir/src/sdbstr.c.o
build/lib/libsdb.a: src/sdb/CMakeFiles/sdb.dir/build.make
build/lib/libsdb.a: src/sdb/CMakeFiles/sdb.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jason/Dev/TaosData/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C static library ../../build/lib/libsdb.a"
	cd /Users/jason/Dev/TaosData/src/sdb && $(CMAKE_COMMAND) -P CMakeFiles/sdb.dir/cmake_clean_target.cmake
	cd /Users/jason/Dev/TaosData/src/sdb && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sdb.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/sdb/CMakeFiles/sdb.dir/build: build/lib/libsdb.a

.PHONY : src/sdb/CMakeFiles/sdb.dir/build

src/sdb/CMakeFiles/sdb.dir/clean:
	cd /Users/jason/Dev/TaosData/src/sdb && $(CMAKE_COMMAND) -P CMakeFiles/sdb.dir/cmake_clean.cmake
.PHONY : src/sdb/CMakeFiles/sdb.dir/clean

src/sdb/CMakeFiles/sdb.dir/depend:
	cd /Users/jason/Dev/TaosData && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jason/Dev/TaosData /Users/jason/Dev/TaosData/src/sdb /Users/jason/Dev/TaosData /Users/jason/Dev/TaosData/src/sdb /Users/jason/Dev/TaosData/src/sdb/CMakeFiles/sdb.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/sdb/CMakeFiles/sdb.dir/depend

