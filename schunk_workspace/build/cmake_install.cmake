# Install script for directory: /home/powerball/rpi_robotics_work/schunk_workspace/src

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/powerball/rpi_robotics_work/schunk_workspace/install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/powerball/rpi_robotics_work/schunk_workspace/install/.catkin")
FILE(INSTALL DESTINATION "/home/powerball/rpi_robotics_work/schunk_workspace/install" TYPE FILE FILES "/home/powerball/rpi_robotics_work/schunk_workspace/build/catkin_generated/installspace/.catkin")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/powerball/rpi_robotics_work/schunk_workspace/install/_setup_util.py")
FILE(INSTALL DESTINATION "/home/powerball/rpi_robotics_work/schunk_workspace/install" TYPE PROGRAM FILES "/home/powerball/rpi_robotics_work/schunk_workspace/build/catkin_generated/installspace/_setup_util.py")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/powerball/rpi_robotics_work/schunk_workspace/install/env.sh")
FILE(INSTALL DESTINATION "/home/powerball/rpi_robotics_work/schunk_workspace/install" TYPE PROGRAM FILES "/home/powerball/rpi_robotics_work/schunk_workspace/build/catkin_generated/installspace/env.sh")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/powerball/rpi_robotics_work/schunk_workspace/install/setup.bash")
FILE(INSTALL DESTINATION "/home/powerball/rpi_robotics_work/schunk_workspace/install" TYPE FILE FILES "/home/powerball/rpi_robotics_work/schunk_workspace/build/catkin_generated/installspace/setup.bash")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/powerball/rpi_robotics_work/schunk_workspace/install/setup.sh")
FILE(INSTALL DESTINATION "/home/powerball/rpi_robotics_work/schunk_workspace/install" TYPE FILE FILES "/home/powerball/rpi_robotics_work/schunk_workspace/build/catkin_generated/installspace/setup.sh")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/powerball/rpi_robotics_work/schunk_workspace/install/setup.zsh")
FILE(INSTALL DESTINATION "/home/powerball/rpi_robotics_work/schunk_workspace/install" TYPE FILE FILES "/home/powerball/rpi_robotics_work/schunk_workspace/build/catkin_generated/installspace/setup.zsh")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/powerball/rpi_robotics_work/schunk_workspace/install/.rosinstall")
FILE(INSTALL DESTINATION "/home/powerball/rpi_robotics_work/schunk_workspace/install" TYPE FILE FILES "/home/powerball/rpi_robotics_work/schunk_workspace/build/catkin_generated/installspace/.rosinstall")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/etc/catkin/profile.d" TYPE FILE FILES "/opt/ros/hydro/share/catkin/cmake/env-hooks/05.catkin_make.bash")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/etc/catkin/profile.d" TYPE FILE FILES "/opt/ros/hydro/share/catkin/cmake/env-hooks/05.catkin_make_isolated.bash")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/gtest/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_command_tools/cob_command_gui/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_command_tools/cob_command_tools/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_common/cob_common/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_command_tools/cob_dashboard/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_common/cob_description/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_driver/cob_driver/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_extern/cob_extern/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_common/desire_description/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/ipa_canopen/ipa_canopen/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_extern/libntcan/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_common/raw_description/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_extern/libpcan/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_extern/libphidgets/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/schunk_modular_robotics/schunk_libm5api/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/schunk_robots/schunk_lwa4p/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/schunk_robots/schunk_lwa4p_extended/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/schunk_modular_robotics/schunk_modular_robotics/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/schunk_robots/schunk_robots/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_common/brics_actuator/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_common/cob_srvs/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/schunk_modular_robotics/schunk_description/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_driver/cob_phidgets/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_driver/cob_sick_lms1xx/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_command_tools/cob_teleop/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_driver/cob_utilities/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_driver/cob_generic_can/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_driver/cob_canopen_motor/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_driver/cob_base_drive_chain/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/ipa_canopen/ipa_canopen_core/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_driver/cob_relayboard/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_driver/cob_camera_sensors/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_driver/cob_light/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_driver/cob_sound/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_driver/cob_voltage_control/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_command_tools/cob_script_server/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_command_tools/cob_teleop_cob4/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_driver/cob_undercarriage_ctrl/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_driver/cob_sick_s300/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_driver/cob_head_axis/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/ipa_canopen/ipa_canopen_ros/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_command_tools/cob_interactive_teleop/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/schunk_modular_robotics/schunk_powercube_chain/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/schunk_modular_robotics/schunk_sdh/cmake_install.cmake")
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/schunk_modular_robotics/schunk_simulated_tactile_sensors/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "/home/powerball/rpi_robotics_work/schunk_workspace/build/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/home/powerball/rpi_robotics_work/schunk_workspace/build/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
