# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/munjunwoo/server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/munjunwoo/server/build

# Include any dependencies generated for this target.
include src/include/rapidjson/example/CMakeFiles/serialize.dir/depend.make

# Include the progress variables for this target.
include src/include/rapidjson/example/CMakeFiles/serialize.dir/progress.make

# Include the compile flags for this target's objects.
include src/include/rapidjson/example/CMakeFiles/serialize.dir/flags.make

src/include/rapidjson/example/CMakeFiles/serialize.dir/serialize/serialize.cpp.o: src/include/rapidjson/example/CMakeFiles/serialize.dir/flags.make
src/include/rapidjson/example/CMakeFiles/serialize.dir/serialize/serialize.cpp.o: ../lib/rapidjson/example/serialize/serialize.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/munjunwoo/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/include/rapidjson/example/CMakeFiles/serialize.dir/serialize/serialize.cpp.o"
	cd /home/munjunwoo/server/build/src/include/rapidjson/example && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/serialize.dir/serialize/serialize.cpp.o -c /home/munjunwoo/server/lib/rapidjson/example/serialize/serialize.cpp

src/include/rapidjson/example/CMakeFiles/serialize.dir/serialize/serialize.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serialize.dir/serialize/serialize.cpp.i"
	cd /home/munjunwoo/server/build/src/include/rapidjson/example && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/munjunwoo/server/lib/rapidjson/example/serialize/serialize.cpp > CMakeFiles/serialize.dir/serialize/serialize.cpp.i

src/include/rapidjson/example/CMakeFiles/serialize.dir/serialize/serialize.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serialize.dir/serialize/serialize.cpp.s"
	cd /home/munjunwoo/server/build/src/include/rapidjson/example && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/munjunwoo/server/lib/rapidjson/example/serialize/serialize.cpp -o CMakeFiles/serialize.dir/serialize/serialize.cpp.s

src/include/rapidjson/example/CMakeFiles/serialize.dir/serialize/serialize.cpp.o.requires:

.PHONY : src/include/rapidjson/example/CMakeFiles/serialize.dir/serialize/serialize.cpp.o.requires

src/include/rapidjson/example/CMakeFiles/serialize.dir/serialize/serialize.cpp.o.provides: src/include/rapidjson/example/CMakeFiles/serialize.dir/serialize/serialize.cpp.o.requires
	$(MAKE) -f src/include/rapidjson/example/CMakeFiles/serialize.dir/build.make src/include/rapidjson/example/CMakeFiles/serialize.dir/serialize/serialize.cpp.o.provides.build
.PHONY : src/include/rapidjson/example/CMakeFiles/serialize.dir/serialize/serialize.cpp.o.provides

src/include/rapidjson/example/CMakeFiles/serialize.dir/serialize/serialize.cpp.o.provides.build: src/include/rapidjson/example/CMakeFiles/serialize.dir/serialize/serialize.cpp.o


# Object files for target serialize
serialize_OBJECTS = \
"CMakeFiles/serialize.dir/serialize/serialize.cpp.o"

# External object files for target serialize
serialize_EXTERNAL_OBJECTS =

bin/serialize: src/include/rapidjson/example/CMakeFiles/serialize.dir/serialize/serialize.cpp.o
bin/serialize: src/include/rapidjson/example/CMakeFiles/serialize.dir/build.make
bin/serialize: src/include/rapidjson/example/CMakeFiles/serialize.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/munjunwoo/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../bin/serialize"
	cd /home/munjunwoo/server/build/src/include/rapidjson/example && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/serialize.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/include/rapidjson/example/CMakeFiles/serialize.dir/build: bin/serialize

.PHONY : src/include/rapidjson/example/CMakeFiles/serialize.dir/build

src/include/rapidjson/example/CMakeFiles/serialize.dir/requires: src/include/rapidjson/example/CMakeFiles/serialize.dir/serialize/serialize.cpp.o.requires

.PHONY : src/include/rapidjson/example/CMakeFiles/serialize.dir/requires

src/include/rapidjson/example/CMakeFiles/serialize.dir/clean:
	cd /home/munjunwoo/server/build/src/include/rapidjson/example && $(CMAKE_COMMAND) -P CMakeFiles/serialize.dir/cmake_clean.cmake
.PHONY : src/include/rapidjson/example/CMakeFiles/serialize.dir/clean

src/include/rapidjson/example/CMakeFiles/serialize.dir/depend:
	cd /home/munjunwoo/server/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/munjunwoo/server /home/munjunwoo/server/lib/rapidjson/example /home/munjunwoo/server/build /home/munjunwoo/server/build/src/include/rapidjson/example /home/munjunwoo/server/build/src/include/rapidjson/example/CMakeFiles/serialize.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/include/rapidjson/example/CMakeFiles/serialize.dir/depend
