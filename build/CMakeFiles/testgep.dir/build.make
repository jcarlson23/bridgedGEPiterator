# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.8.0/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.8.0/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jaredcarlson/Projects/gep_iterator

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jaredcarlson/Projects/gep_iterator/build

# Include any dependencies generated for this target.
include CMakeFiles/testgep.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/testgep.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testgep.dir/flags.make

CMakeFiles/testgep.dir/test.cpp.o: CMakeFiles/testgep.dir/flags.make
CMakeFiles/testgep.dir/test.cpp.o: ../test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jaredcarlson/Projects/gep_iterator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/testgep.dir/test.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testgep.dir/test.cpp.o -c /Users/jaredcarlson/Projects/gep_iterator/test.cpp

CMakeFiles/testgep.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testgep.dir/test.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jaredcarlson/Projects/gep_iterator/test.cpp > CMakeFiles/testgep.dir/test.cpp.i

CMakeFiles/testgep.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testgep.dir/test.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jaredcarlson/Projects/gep_iterator/test.cpp -o CMakeFiles/testgep.dir/test.cpp.s

CMakeFiles/testgep.dir/test.cpp.o.requires:

.PHONY : CMakeFiles/testgep.dir/test.cpp.o.requires

CMakeFiles/testgep.dir/test.cpp.o.provides: CMakeFiles/testgep.dir/test.cpp.o.requires
	$(MAKE) -f CMakeFiles/testgep.dir/build.make CMakeFiles/testgep.dir/test.cpp.o.provides.build
.PHONY : CMakeFiles/testgep.dir/test.cpp.o.provides

CMakeFiles/testgep.dir/test.cpp.o.provides.build: CMakeFiles/testgep.dir/test.cpp.o


# Object files for target testgep
testgep_OBJECTS = \
"CMakeFiles/testgep.dir/test.cpp.o"

# External object files for target testgep
testgep_EXTERNAL_OBJECTS =

bin/testgep: CMakeFiles/testgep.dir/test.cpp.o
bin/testgep: CMakeFiles/testgep.dir/build.make
bin/testgep: /Users/jaredcarlson/Projects/llvm-4-build/lib/libLLVMBitWriter.a
bin/testgep: /Users/jaredcarlson/Projects/llvm-4-build/lib/libLLVMCore.a
bin/testgep: /Users/jaredcarlson/Projects/llvm-4-build/lib/libLLVMipo.a
bin/testgep: /Users/jaredcarlson/Projects/llvm-4-build/lib/libLLVMIRReader.a
bin/testgep: /Users/jaredcarlson/Projects/llvm-4-build/lib/libLLVMInstCombine.a
bin/testgep: /Users/jaredcarlson/Projects/llvm-4-build/lib/libLLVMInstrumentation.a
bin/testgep: /Users/jaredcarlson/Projects/llvm-4-build/lib/libLLVMTarget.a
bin/testgep: /Users/jaredcarlson/Projects/llvm-4-build/lib/libLLVMLinker.a
bin/testgep: /Users/jaredcarlson/Projects/llvm-4-build/lib/libLLVMAnalysis.a
bin/testgep: /Users/jaredcarlson/Projects/llvm-4-build/lib/libLLVMScalarOpts.a
bin/testgep: /Users/jaredcarlson/Projects/llvm-4-build/lib/libLLVMSupport.a
bin/testgep: /Users/jaredcarlson/Projects/llvm-4-build/lib/libLLVMBitWriter.a
bin/testgep: /Users/jaredcarlson/Projects/llvm-4-build/lib/libLLVMAsmParser.a
bin/testgep: /Users/jaredcarlson/Projects/llvm-4-build/lib/libLLVMInstCombine.a
bin/testgep: /Users/jaredcarlson/Projects/llvm-4-build/lib/libLLVMVectorize.a
bin/testgep: /Users/jaredcarlson/Projects/llvm-4-build/lib/libLLVMTransformUtils.a
bin/testgep: /Users/jaredcarlson/Projects/llvm-4-build/lib/libLLVMAnalysis.a
bin/testgep: /Users/jaredcarlson/Projects/llvm-4-build/lib/libLLVMObject.a
bin/testgep: /Users/jaredcarlson/Projects/llvm-4-build/lib/libLLVMBitReader.a
bin/testgep: /Users/jaredcarlson/Projects/llvm-4-build/lib/libLLVMMCParser.a
bin/testgep: /Users/jaredcarlson/Projects/llvm-4-build/lib/libLLVMProfileData.a
bin/testgep: /Users/jaredcarlson/Projects/llvm-4-build/lib/libLLVMCore.a
bin/testgep: /Users/jaredcarlson/Projects/llvm-4-build/lib/libLLVMMC.a
bin/testgep: /Users/jaredcarlson/Projects/llvm-4-build/lib/libLLVMSupport.a
bin/testgep: /Users/jaredcarlson/Projects/llvm-4-build/lib/libLLVMDemangle.a
bin/testgep: CMakeFiles/testgep.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jaredcarlson/Projects/gep_iterator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/testgep"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testgep.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/testgep.dir/build: bin/testgep

.PHONY : CMakeFiles/testgep.dir/build

CMakeFiles/testgep.dir/requires: CMakeFiles/testgep.dir/test.cpp.o.requires

.PHONY : CMakeFiles/testgep.dir/requires

CMakeFiles/testgep.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testgep.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testgep.dir/clean

CMakeFiles/testgep.dir/depend:
	cd /Users/jaredcarlson/Projects/gep_iterator/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jaredcarlson/Projects/gep_iterator /Users/jaredcarlson/Projects/gep_iterator /Users/jaredcarlson/Projects/gep_iterator/build /Users/jaredcarlson/Projects/gep_iterator/build /Users/jaredcarlson/Projects/gep_iterator/build/CMakeFiles/testgep.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testgep.dir/depend

