#!/usr/bin/env bash

# bootstrap.sh - Bash script to install ROS Hydro on a Ubuntu 12.04 64-bit box.
#
# Commands are found at: http://wiki.ros.org/hydro/Installation/Ubuntu 
#
# Bryant Pong
# RPI CS Robotics Lab
# 8/31/14
#
# Last Updated: 8/31/14 - 3:25 PM   

apt-get update
apt-get upgrade -y

# Install vim, g++:
apt-get install -y vim g++

# Add ROS Hydro to the sources.list file:
sh -c 'echo "deb http://packages.ros.org/ros/ubuntu precise main" > /etc/apt/sources.list.d/ros-latest.list'  

# Get the keys for ROS Hydro installation:
wget https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -O - | sudo apt-key add -

# Update the package repositories:
apt-get update 

# Install ROS Hydro Desktop:
apt-get install -y ros-hydro-desktop-full

# Initialize rosdep (for system dependencies):
rosdep init
rosdep update

# Source the ROS Hydro setup file:
echo "source /opt/ros/hydro/setup.bash" >> ~/.bashrc  
source ~/.bashrc

# Finally, install rosinstall:
apt-get install -y python-rosinstall
