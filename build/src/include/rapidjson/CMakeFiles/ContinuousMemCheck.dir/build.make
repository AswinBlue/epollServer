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

# Utility rule file for ContinuousMemCheck.

# Include the progress variables for this target.
include src/include/rapidjson/CMakeFiles/ContinuousMemCheck.dir/progress.make

src/include/rapidjson/CMakeFiles/ContinuousMemCheck:
	cd /home/munjunwoo/server/build/src/include/rapidjson && /usr/bin/ctest -D ContinuousMemCheck

ContinuousMemCheck: src/include/rapidjson/CMakeFiles/ContinuousMemCheck
ContinuousMemCheck: src/include/rapidjson/CMakeFiles/ContinuousMemCheck.dir/build.make

.PHONY : ContinuousMemCheck

# Rule to build all files generated by this target.
src/include/rapidjson/CMakeFiles/ContinuousMemCheck.dir/build: ContinuousMemCheck

.PHONY : src/include/rapidjson/CMakeFiles/ContinuousMemCheck.dir/build

src/include/rapidjson/CMakeFiles/ContinuousMemCheck.dir/clean:
	cd /home/munjunwoo/server/build/src/include/rapidjson && $(CMAKE_COMMAND) -P CMakeFiles/ContinuousMemCheck.dir/cmake_clean.cmake
.PHONY : src/include/rapidjson/CMakeFiles/ContinuousMemCheck.dir/clean

src/include/rapidjson/CMakeFiles/ContinuousMemCheck.dir/depend:
	cd /home/munjunwoo/server/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/munjunwoo/server /home/munjunwoo/server/lib/rapidjson /home/munjunwoo/server/build /home/munjunwoo/server/build/src/include/rapidjson /home/munjunwoo/server/build/src/include/rapidjson/CMakeFiles/ContinuousMemCheck.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/include/rapidjson/CMakeFiles/ContinuousMemCheck.dir/depend
