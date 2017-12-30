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
CMAKE_SOURCE_DIR = /home/firefly/TrackerGoturn-master/TrackerGoturnDemo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/firefly/TrackerGoturn-master/TrackerGoturnDemo/build

# Include any dependencies generated for this target.
include CMakeFiles/show_tracker_alov.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/show_tracker_alov.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/show_tracker_alov.dir/flags.make

CMakeFiles/show_tracker_alov.dir/src/visualizer/show_tracker_alov.cpp.o: CMakeFiles/show_tracker_alov.dir/flags.make
CMakeFiles/show_tracker_alov.dir/src/visualizer/show_tracker_alov.cpp.o: ../src/visualizer/show_tracker_alov.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/firefly/TrackerGoturn-master/TrackerGoturnDemo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/show_tracker_alov.dir/src/visualizer/show_tracker_alov.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/show_tracker_alov.dir/src/visualizer/show_tracker_alov.cpp.o -c /home/firefly/TrackerGoturn-master/TrackerGoturnDemo/src/visualizer/show_tracker_alov.cpp

CMakeFiles/show_tracker_alov.dir/src/visualizer/show_tracker_alov.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/show_tracker_alov.dir/src/visualizer/show_tracker_alov.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/firefly/TrackerGoturn-master/TrackerGoturnDemo/src/visualizer/show_tracker_alov.cpp > CMakeFiles/show_tracker_alov.dir/src/visualizer/show_tracker_alov.cpp.i

CMakeFiles/show_tracker_alov.dir/src/visualizer/show_tracker_alov.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/show_tracker_alov.dir/src/visualizer/show_tracker_alov.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/firefly/TrackerGoturn-master/TrackerGoturnDemo/src/visualizer/show_tracker_alov.cpp -o CMakeFiles/show_tracker_alov.dir/src/visualizer/show_tracker_alov.cpp.s

CMakeFiles/show_tracker_alov.dir/src/visualizer/show_tracker_alov.cpp.o.requires:

.PHONY : CMakeFiles/show_tracker_alov.dir/src/visualizer/show_tracker_alov.cpp.o.requires

CMakeFiles/show_tracker_alov.dir/src/visualizer/show_tracker_alov.cpp.o.provides: CMakeFiles/show_tracker_alov.dir/src/visualizer/show_tracker_alov.cpp.o.requires
	$(MAKE) -f CMakeFiles/show_tracker_alov.dir/build.make CMakeFiles/show_tracker_alov.dir/src/visualizer/show_tracker_alov.cpp.o.provides.build
.PHONY : CMakeFiles/show_tracker_alov.dir/src/visualizer/show_tracker_alov.cpp.o.provides

CMakeFiles/show_tracker_alov.dir/src/visualizer/show_tracker_alov.cpp.o.provides.build: CMakeFiles/show_tracker_alov.dir/src/visualizer/show_tracker_alov.cpp.o


# Object files for target show_tracker_alov
show_tracker_alov_OBJECTS = \
"CMakeFiles/show_tracker_alov.dir/src/visualizer/show_tracker_alov.cpp.o"

# External object files for target show_tracker_alov
show_tracker_alov_EXTERNAL_OBJECTS =

show_tracker_alov: CMakeFiles/show_tracker_alov.dir/src/visualizer/show_tracker_alov.cpp.o
show_tracker_alov: CMakeFiles/show_tracker_alov.dir/build.make
show_tracker_alov: libGOTURN.a
show_tracker_alov: /usr/local/opencv/lib/libopencv_dnn.so.3.3.0
show_tracker_alov: /usr/local/opencv/lib/libopencv_ml.so.3.3.0
show_tracker_alov: /usr/local/opencv/lib/libopencv_objdetect.so.3.3.0
show_tracker_alov: /usr/local/opencv/lib/libopencv_shape.so.3.3.0
show_tracker_alov: /usr/local/opencv/lib/libopencv_stitching.so.3.3.0
show_tracker_alov: /usr/local/opencv/lib/libopencv_superres.so.3.3.0
show_tracker_alov: /usr/local/opencv/lib/libopencv_videostab.so.3.3.0
show_tracker_alov: /usr/local/opencv/lib/libopencv_calib3d.so.3.3.0
show_tracker_alov: /usr/local/opencv/lib/libopencv_features2d.so.3.3.0
show_tracker_alov: /usr/local/opencv/lib/libopencv_flann.so.3.3.0
show_tracker_alov: /usr/local/opencv/lib/libopencv_highgui.so.3.3.0
show_tracker_alov: /usr/local/opencv/lib/libopencv_photo.so.3.3.0
show_tracker_alov: /usr/local/opencv/lib/libopencv_video.so.3.3.0
show_tracker_alov: /usr/local/opencv/lib/libopencv_videoio.so.3.3.0
show_tracker_alov: /usr/local/opencv/lib/libopencv_imgcodecs.so.3.3.0
show_tracker_alov: /usr/local/opencv/lib/libopencv_imgproc.so.3.3.0
show_tracker_alov: /usr/local/opencv/lib/libopencv_core.so.3.3.0
show_tracker_alov: /home/firefly/CaffeOnACL/build/lib/libcaffe.so
show_tracker_alov: /home/firefly/ComputeLibrary/build/libarm_compute.so
show_tracker_alov: /home/firefly/trax/build/libtrax.so
show_tracker_alov: /usr/lib/aarch64-linux-gnu/libboost_system.so
show_tracker_alov: /usr/lib/aarch64-linux-gnu/libboost_filesystem.so
show_tracker_alov: /usr/lib/aarch64-linux-gnu/libboost_regex.so
show_tracker_alov: /usr/lib/aarch64-linux-gnu/libtinyxml.so
show_tracker_alov: /home/firefly/CaffeOnACL/build/lib/libcaffe.so
show_tracker_alov: /home/firefly/ComputeLibrary/build/libarm_compute.so
show_tracker_alov: /home/firefly/trax/build/libtrax.so
show_tracker_alov: /usr/lib/aarch64-linux-gnu/libboost_system.so
show_tracker_alov: /usr/lib/aarch64-linux-gnu/libboost_filesystem.so
show_tracker_alov: /usr/lib/aarch64-linux-gnu/libboost_regex.so
show_tracker_alov: /usr/lib/aarch64-linux-gnu/libtinyxml.so
show_tracker_alov: CMakeFiles/show_tracker_alov.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/firefly/TrackerGoturn-master/TrackerGoturnDemo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable show_tracker_alov"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/show_tracker_alov.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/show_tracker_alov.dir/build: show_tracker_alov

.PHONY : CMakeFiles/show_tracker_alov.dir/build

CMakeFiles/show_tracker_alov.dir/requires: CMakeFiles/show_tracker_alov.dir/src/visualizer/show_tracker_alov.cpp.o.requires

.PHONY : CMakeFiles/show_tracker_alov.dir/requires

CMakeFiles/show_tracker_alov.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/show_tracker_alov.dir/cmake_clean.cmake
.PHONY : CMakeFiles/show_tracker_alov.dir/clean

CMakeFiles/show_tracker_alov.dir/depend:
	cd /home/firefly/TrackerGoturn-master/TrackerGoturnDemo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/firefly/TrackerGoturn-master/TrackerGoturnDemo /home/firefly/TrackerGoturn-master/TrackerGoturnDemo /home/firefly/TrackerGoturn-master/TrackerGoturnDemo/build /home/firefly/TrackerGoturn-master/TrackerGoturnDemo/build /home/firefly/TrackerGoturn-master/TrackerGoturnDemo/build/CMakeFiles/show_tracker_alov.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/show_tracker_alov.dir/depend

