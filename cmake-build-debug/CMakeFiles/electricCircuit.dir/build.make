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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/fengyandeng/Documents/Programme/MyProject/electricCircuit

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/fengyandeng/Documents/Programme/MyProject/electricCircuit/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/electricCircuit.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/electricCircuit.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/electricCircuit.dir/flags.make

CMakeFiles/electricCircuit.dir/main.cpp.o: CMakeFiles/electricCircuit.dir/flags.make
CMakeFiles/electricCircuit.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/fengyandeng/Documents/Programme/MyProject/electricCircuit/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/electricCircuit.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/electricCircuit.dir/main.cpp.o -c /Users/fengyandeng/Documents/Programme/MyProject/electricCircuit/main.cpp

CMakeFiles/electricCircuit.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/electricCircuit.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/fengyandeng/Documents/Programme/MyProject/electricCircuit/main.cpp > CMakeFiles/electricCircuit.dir/main.cpp.i

CMakeFiles/electricCircuit.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/electricCircuit.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/fengyandeng/Documents/Programme/MyProject/electricCircuit/main.cpp -o CMakeFiles/electricCircuit.dir/main.cpp.s

CMakeFiles/electricCircuit.dir/circuit.cpp.o: CMakeFiles/electricCircuit.dir/flags.make
CMakeFiles/electricCircuit.dir/circuit.cpp.o: ../circuit.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/fengyandeng/Documents/Programme/MyProject/electricCircuit/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/electricCircuit.dir/circuit.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/electricCircuit.dir/circuit.cpp.o -c /Users/fengyandeng/Documents/Programme/MyProject/electricCircuit/circuit.cpp

CMakeFiles/electricCircuit.dir/circuit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/electricCircuit.dir/circuit.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/fengyandeng/Documents/Programme/MyProject/electricCircuit/circuit.cpp > CMakeFiles/electricCircuit.dir/circuit.cpp.i

CMakeFiles/electricCircuit.dir/circuit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/electricCircuit.dir/circuit.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/fengyandeng/Documents/Programme/MyProject/electricCircuit/circuit.cpp -o CMakeFiles/electricCircuit.dir/circuit.cpp.s

CMakeFiles/electricCircuit.dir/matrix.cpp.o: CMakeFiles/electricCircuit.dir/flags.make
CMakeFiles/electricCircuit.dir/matrix.cpp.o: ../matrix.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/fengyandeng/Documents/Programme/MyProject/electricCircuit/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/electricCircuit.dir/matrix.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/electricCircuit.dir/matrix.cpp.o -c /Users/fengyandeng/Documents/Programme/MyProject/electricCircuit/matrix.cpp

CMakeFiles/electricCircuit.dir/matrix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/electricCircuit.dir/matrix.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/fengyandeng/Documents/Programme/MyProject/electricCircuit/matrix.cpp > CMakeFiles/electricCircuit.dir/matrix.cpp.i

CMakeFiles/electricCircuit.dir/matrix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/electricCircuit.dir/matrix.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/fengyandeng/Documents/Programme/MyProject/electricCircuit/matrix.cpp -o CMakeFiles/electricCircuit.dir/matrix.cpp.s

# Object files for target electricCircuit
electricCircuit_OBJECTS = \
"CMakeFiles/electricCircuit.dir/main.cpp.o" \
"CMakeFiles/electricCircuit.dir/circuit.cpp.o" \
"CMakeFiles/electricCircuit.dir/matrix.cpp.o"

# External object files for target electricCircuit
electricCircuit_EXTERNAL_OBJECTS =

electricCircuit: CMakeFiles/electricCircuit.dir/main.cpp.o
electricCircuit: CMakeFiles/electricCircuit.dir/circuit.cpp.o
electricCircuit: CMakeFiles/electricCircuit.dir/matrix.cpp.o
electricCircuit: CMakeFiles/electricCircuit.dir/build.make
electricCircuit: CMakeFiles/electricCircuit.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/fengyandeng/Documents/Programme/MyProject/electricCircuit/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable electricCircuit"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/electricCircuit.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/electricCircuit.dir/build: electricCircuit

.PHONY : CMakeFiles/electricCircuit.dir/build

CMakeFiles/electricCircuit.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/electricCircuit.dir/cmake_clean.cmake
.PHONY : CMakeFiles/electricCircuit.dir/clean

CMakeFiles/electricCircuit.dir/depend:
	cd /Users/fengyandeng/Documents/Programme/MyProject/electricCircuit/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/fengyandeng/Documents/Programme/MyProject/electricCircuit /Users/fengyandeng/Documents/Programme/MyProject/electricCircuit /Users/fengyandeng/Documents/Programme/MyProject/electricCircuit/cmake-build-debug /Users/fengyandeng/Documents/Programme/MyProject/electricCircuit/cmake-build-debug /Users/fengyandeng/Documents/Programme/MyProject/electricCircuit/cmake-build-debug/CMakeFiles/electricCircuit.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/electricCircuit.dir/depend

