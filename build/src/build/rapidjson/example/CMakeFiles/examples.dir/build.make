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

# Utility rule file for examples.

# Include the progress variables for this target.
include src/build/rapidjson/example/CMakeFiles/examples.dir/progress.make

src/build/rapidjson/example/CMakeFiles/examples: bin/capitalize
src/build/rapidjson/example/CMakeFiles/examples: bin/condense
src/build/rapidjson/example/CMakeFiles/examples: bin/filterkey
src/build/rapidjson/example/CMakeFiles/examples: bin/filterkeydom
src/build/rapidjson/example/CMakeFiles/examples: bin/jsonx
src/build/rapidjson/example/CMakeFiles/examples: bin/lookaheadparser
src/build/rapidjson/example/CMakeFiles/examples: bin/messagereader
src/build/rapidjson/example/CMakeFiles/examples: bin/parsebyparts
src/build/rapidjson/example/CMakeFiles/examples: bin/pretty
src/build/rapidjson/example/CMakeFiles/examples: bin/prettyauto
src/build/rapidjson/example/CMakeFiles/examples: bin/schemavalidator
src/build/rapidjson/example/CMakeFiles/examples: bin/serialize
src/build/rapidjson/example/CMakeFiles/examples: bin/simpledom
src/build/rapidjson/example/CMakeFiles/examples: bin/simplereader
src/build/rapidjson/example/CMakeFiles/examples: bin/simplepullreader
src/build/rapidjson/example/CMakeFiles/examples: bin/simplewriter
src/build/rapidjson/example/CMakeFiles/examples: bin/sortkeys
src/build/rapidjson/example/CMakeFiles/examples: bin/tutorial


examples: src/build/rapidjson/example/CMakeFiles/examples
examples: src/build/rapidjson/example/CMakeFiles/examples.dir/build.make

.PHONY : examples

# Rule to build all files generated by this target.
src/build/rapidjson/example/CMakeFiles/examples.dir/build: examples

.PHONY : src/build/rapidjson/example/CMakeFiles/examples.dir/build

src/build/rapidjson/example/CMakeFiles/examples.dir/clean:
	cd /home/munjunwoo/server/build/src/build/rapidjson/example && $(CMAKE_COMMAND) -P CMakeFiles/examples.dir/cmake_clean.cmake
.PHONY : src/build/rapidjson/example/CMakeFiles/examples.dir/clean

src/build/rapidjson/example/CMakeFiles/examples.dir/depend:
	cd /home/munjunwoo/server/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/munjunwoo/server /home/munjunwoo/server/lib/rapidjson/example /home/munjunwoo/server/build /home/munjunwoo/server/build/src/build/rapidjson/example /home/munjunwoo/server/build/src/build/rapidjson/example/CMakeFiles/examples.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/build/rapidjson/example/CMakeFiles/examples.dir/depend
