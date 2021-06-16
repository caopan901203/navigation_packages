# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zhou/work/codes/Stage

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zhou/work/codes/Stage

# Include any dependencies generated for this target.
include examples/ctrl/CMakeFiles/fasr.dir/depend.make

# Include the progress variables for this target.
include examples/ctrl/CMakeFiles/fasr.dir/progress.make

# Include the compile flags for this target's objects.
include examples/ctrl/CMakeFiles/fasr.dir/flags.make

examples/ctrl/CMakeFiles/fasr.dir/fasr.cc.o: examples/ctrl/CMakeFiles/fasr.dir/flags.make
examples/ctrl/CMakeFiles/fasr.dir/fasr.cc.o: examples/ctrl/fasr.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhou/work/codes/Stage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/ctrl/CMakeFiles/fasr.dir/fasr.cc.o"
	cd /home/zhou/work/codes/Stage/examples/ctrl && /usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fasr.dir/fasr.cc.o -c /home/zhou/work/codes/Stage/examples/ctrl/fasr.cc

examples/ctrl/CMakeFiles/fasr.dir/fasr.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fasr.dir/fasr.cc.i"
	cd /home/zhou/work/codes/Stage/examples/ctrl && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zhou/work/codes/Stage/examples/ctrl/fasr.cc > CMakeFiles/fasr.dir/fasr.cc.i

examples/ctrl/CMakeFiles/fasr.dir/fasr.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fasr.dir/fasr.cc.s"
	cd /home/zhou/work/codes/Stage/examples/ctrl && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zhou/work/codes/Stage/examples/ctrl/fasr.cc -o CMakeFiles/fasr.dir/fasr.cc.s

examples/ctrl/CMakeFiles/fasr.dir/fasr.cc.o.requires:

.PHONY : examples/ctrl/CMakeFiles/fasr.dir/fasr.cc.o.requires

examples/ctrl/CMakeFiles/fasr.dir/fasr.cc.o.provides: examples/ctrl/CMakeFiles/fasr.dir/fasr.cc.o.requires
	$(MAKE) -f examples/ctrl/CMakeFiles/fasr.dir/build.make examples/ctrl/CMakeFiles/fasr.dir/fasr.cc.o.provides.build
.PHONY : examples/ctrl/CMakeFiles/fasr.dir/fasr.cc.o.provides

examples/ctrl/CMakeFiles/fasr.dir/fasr.cc.o.provides.build: examples/ctrl/CMakeFiles/fasr.dir/fasr.cc.o


# Object files for target fasr
fasr_OBJECTS = \
"CMakeFiles/fasr.dir/fasr.cc.o"

# External object files for target fasr
fasr_EXTERNAL_OBJECTS =

examples/ctrl/fasr.so: examples/ctrl/CMakeFiles/fasr.dir/fasr.cc.o
examples/ctrl/fasr.so: examples/ctrl/CMakeFiles/fasr.dir/build.make
examples/ctrl/fasr.so: libstage/libstage.so.4.3.0
examples/ctrl/fasr.so: /usr/lib/x86_64-linux-gnu/libGLU.so
examples/ctrl/fasr.so: /usr/lib/x86_64-linux-gnu/libGL.so
examples/ctrl/fasr.so: /usr/lib/x86_64-linux-gnu/libGLU.so
examples/ctrl/fasr.so: /usr/lib/x86_64-linux-gnu/libGL.so
examples/ctrl/fasr.so: /usr/lib/x86_64-linux-gnu/libltdl.so
examples/ctrl/fasr.so: /usr/lib/x86_64-linux-gnu/libjpeg.so
examples/ctrl/fasr.so: /usr/lib/x86_64-linux-gnu/libpng.so
examples/ctrl/fasr.so: /usr/lib/x86_64-linux-gnu/libz.so
examples/ctrl/fasr.so: /usr/lib/x86_64-linux-gnu/libGLU.so
examples/ctrl/fasr.so: /usr/lib/x86_64-linux-gnu/libGL.so
examples/ctrl/fasr.so: /usr/lib/x86_64-linux-gnu/libGLU.so
examples/ctrl/fasr.so: /usr/lib/x86_64-linux-gnu/libGL.so
examples/ctrl/fasr.so: /usr/lib/x86_64-linux-gnu/libfltk_images.so
examples/ctrl/fasr.so: /usr/lib/x86_64-linux-gnu/libfltk_forms.so
examples/ctrl/fasr.so: /usr/lib/x86_64-linux-gnu/libfltk_gl.so
examples/ctrl/fasr.so: /usr/lib/x86_64-linux-gnu/libfltk.so
examples/ctrl/fasr.so: /usr/lib/x86_64-linux-gnu/libSM.so
examples/ctrl/fasr.so: /usr/lib/x86_64-linux-gnu/libICE.so
examples/ctrl/fasr.so: /usr/lib/x86_64-linux-gnu/libX11.so
examples/ctrl/fasr.so: /usr/lib/x86_64-linux-gnu/libXext.so
examples/ctrl/fasr.so: /usr/lib/x86_64-linux-gnu/libm.so
examples/ctrl/fasr.so: examples/ctrl/CMakeFiles/fasr.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zhou/work/codes/Stage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared module fasr.so"
	cd /home/zhou/work/codes/Stage/examples/ctrl && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fasr.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/ctrl/CMakeFiles/fasr.dir/build: examples/ctrl/fasr.so

.PHONY : examples/ctrl/CMakeFiles/fasr.dir/build

examples/ctrl/CMakeFiles/fasr.dir/requires: examples/ctrl/CMakeFiles/fasr.dir/fasr.cc.o.requires

.PHONY : examples/ctrl/CMakeFiles/fasr.dir/requires

examples/ctrl/CMakeFiles/fasr.dir/clean:
	cd /home/zhou/work/codes/Stage/examples/ctrl && $(CMAKE_COMMAND) -P CMakeFiles/fasr.dir/cmake_clean.cmake
.PHONY : examples/ctrl/CMakeFiles/fasr.dir/clean

examples/ctrl/CMakeFiles/fasr.dir/depend:
	cd /home/zhou/work/codes/Stage && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zhou/work/codes/Stage /home/zhou/work/codes/Stage/examples/ctrl /home/zhou/work/codes/Stage /home/zhou/work/codes/Stage/examples/ctrl /home/zhou/work/codes/Stage/examples/ctrl/CMakeFiles/fasr.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/ctrl/CMakeFiles/fasr.dir/depend

