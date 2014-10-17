# CMake generated Testfile for 
# Source directory: /home/powerball/rpi_robotics_work/schunk_workspace/src/mocap_optitrack
# Build directory: /home/powerball/rpi_robotics_work/schunk_workspace/build/mocap_optitrack
# 
# This file includes the relevent testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(_ctest_mocap_optitrack_roslaunch-check_launch "/home/powerball/rpi_robotics_work/schunk_workspace/build/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/hydro/share/catkin/cmake/test/run_tests.py" "/home/powerball/rpi_robotics_work/schunk_workspace/build/test_results/mocap_optitrack/roslaunch-check_launch.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/powerball/rpi_robotics_work/schunk_workspace/build/test_results/mocap_optitrack" "/opt/ros/hydro/share/roslaunch/cmake/../scripts/roslaunch-check -o '/home/powerball/rpi_robotics_work/schunk_workspace/build/test_results/mocap_optitrack/roslaunch-check_launch.xml' '/home/powerball/rpi_robotics_work/schunk_workspace/src/mocap_optitrack/launch' ")
SUBDIRS(src)
