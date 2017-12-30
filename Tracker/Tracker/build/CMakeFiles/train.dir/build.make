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
include CMakeFiles/train.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/train.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/train.dir/flags.make

CMakeFiles/train.dir/src/train/train.cpp.o: CMakeFiles/train.dir/flags.make
CMakeFiles/train.dir/src/train/train.cpp.o: ../src/train/train.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/firefly/TrackerGoturn-master/TrackerGoturnDemo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/train.dir/src/train/train.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/train.dir/src/train/train.cpp.o -c /home/firefly/TrackerGoturn-master/TrackerGoturnDemo/src/train/train.cpp

CMakeFiles/train.dir/src/train/train.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/train.dir/src/train/train.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/firefly/TrackerGoturn-master/TrackerGoturnDemo/src/train/train.cpp > CMakeFiles/train.dir/src/train/train.cpp.i

CMakeFiles/train.dir/src/train/train.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/train.dir/src/train/train.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/firefly/TrackerGoturn-master/TrackerGoturnDemo/src/train/train.cpp -o CMakeFiles/train.dir/src/train/train.cpp.s

CMakeFiles/train.dir/src/train/train.cpp.o.requires:

.PHONY : CMakeFiles/train.dir/src/train/train.cpp.o.requires

CMakeFiles/train.dir/src/train/train.cpp.o.provides: CMakeFiles/train.dir/src/train/train.cpp.o.requires
	$(MAKE) -f CMakeFiles/train.dir/build.make CMakeFiles/train.dir/src/train/train.cpp.o.provides.build
.PHONY : CMakeFiles/train.dir/src/train/train.cpp.o.provides

CMakeFiles/train.dir/src/train/train.cpp.o.provides.build: CMakeFiles/train.dir/src/train/train.cpp.o


# Object files for target train
train_OBJECTS = \
"CMakeFiles/train.dir/src/train/train.cpp.o"

# External object files for target train
train_EXTERNAL_OBJECTS =

train: CMakeFiles/train.dir/src/train/train.cpp.o
train: CMakeFiles/train.dir/build.make
train: libGOTURN.a
train: /usr/local/opencv/lib/libopencv_dnn.so.3.3.0
train: /usr/local/opencv/lib/libopencv_ml.so.3.3.0
train: /usr/local/opencv/lib/libopencv_objdetect.so.3.3.0
train: /usr/local/opencv/lib/libopencv_shape.so.3.3.0
train: /usr/local/opencv/lib/libopencv_stitching.so.3.3.0
train: /usr/local/opencv/lib/libopencv_superres.so.3.3.0
train: /usr/local/opencv/lib/libopencv_videostab.so.3.3.0
train: /usr/local/opencv/lib/libopencv_calib3d.so.3.3.0
train: /usr/local/opencv/lib/libopencv_features2d.so.3.3.0
train: /usr/local/opencv/lib/libopencv_flann.so.3.3.0
train: /usr/local/opencv/lib/libopencv_highgui.so.3.3.0
train: /usr/local/opencv/lib/libopencv_photo.so.3.3.0
train: /usr/local/opencv/lib/libopencv_video.so.3.3.0
train: /usr/local/opencv/lib/libopencv_videoio.so.3.3.0
train: /usr/local/opencv/lib/libopencv_imgcodecs.so.3.3.0
train: /usr/local/opencv/lib/libopencv_imgproc.so.3.3.0
train: /usr/local/opencv/lib/libopencv_core.so.3.3.0
train: /home/firefly/CaffeOnACL/build/lib/libcaffe.so
train: /home/firefly/ComputeLibrary/build/libarm_compute.so
train: /home/firefly/trax/build/libtrax.so
train: /usr/lib/aarch64-linux-gnu/libboost_system.so
train: /usr/lib/aarch64-linux-gnu/libboost_filesystem.so
train: /usr/lib/aarch64-linux-gnu/libboost_regex.so
train: /usr/lib/aarch64-linux-gnu/libtinyxml.so
train: /home/firefly/CaffeOnACL/build/lib/libcaffe.so
train: /home/firefly/ComputeLibrary/build/libarm_compute.so
train: /home/firefly/trax/build/libtrax.so
train: /usr/lib/aarch64-linux-gnu/libboost_system.so
train: /usr/lib/aarch64-linux-gnu/libboost_filesystem.so
train: /usr/lib/aarch64-linux-gnu/libboost_regex.so
train: /usr/lib/aarch64-linux-gnu/libtinyxml.so
train: CMakeFiles/train.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/firefly/TrackerGoturn-master/TrackerGoturnDemo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable train"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/train.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/train.dir/build: train

.PHONY : CMakeFiles/train.dir/build

CMakeFiles/train.dir/requires: CMakeFiles/train.dir/src/train/train.cpp.o.requires

.PHONY : CMakeFiles/train.dir/requires

CMakeFiles/train.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/train.dir/cmake_clean.cmake
.PHONY : CMakeFiles/train.dir/clean

CMakeFiles/train.dir/depend:
	cd /home/firefly/TrackerGoturn-master/TrackerGoturnDemo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/firefly/TrackerGoturn-master/TrackerGoturnDemo /home/firefly/TrackerGoturn-master/TrackerGoturnDemo /home/firefly/TrackerGoturn-master/TrackerGoturnDemo/build /home/firefly/TrackerGoturn-master/TrackerGoturnDemo/build /home/firefly/TrackerGoturn-master/TrackerGoturnDemo/build/CMakeFiles/train.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/train.dir/depend

