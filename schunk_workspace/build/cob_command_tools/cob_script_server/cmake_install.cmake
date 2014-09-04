# Install script for directory: /home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server

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
  INCLUDE("/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_command_tools/cob_script_server/catkin_generated/safe_execute_install.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_script_server/action" TYPE FILE FILES
    "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/action/Script.action"
    "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/action/State.action"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_script_server/msg" TYPE FILE FILES
    "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptAction.msg"
    "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptActionGoal.msg"
    "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptActionResult.msg"
    "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptActionFeedback.msg"
    "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptGoal.msg"
    "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptResult.msg"
    "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_script_server/msg" TYPE FILE FILES
    "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateAction.msg"
    "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateActionGoal.msg"
    "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateActionResult.msg"
    "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateActionFeedback.msg"
    "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateGoal.msg"
    "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateResult.msg"
    "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_script_server/msg" TYPE FILE FILES "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/msg/ScriptState.msg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_script_server/srv" TYPE FILE FILES "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/srv/ComposeTrajectory.srv")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_script_server/cmake" TYPE FILE FILES "/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_command_tools/cob_script_server/catkin_generated/installspace/cob_script_server-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/powerball/rpi_robotics_work/schunk_workspace/devel/include/cob_script_server")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/common-lisp/ros/cob_script_server")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/powerball/rpi_robotics_work/schunk_workspace/devel/lib/python2.7/dist-packages/cob_script_server")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/powerball/rpi_robotics_work/schunk_workspace/devel/lib/python2.7/dist-packages/cob_script_server")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_command_tools/cob_script_server/catkin_generated/installspace/cob_script_server.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_script_server/cmake" TYPE FILE FILES "/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_command_tools/cob_script_server/catkin_generated/installspace/cob_script_server-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_script_server/cmake" TYPE FILE FILES
    "/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_command_tools/cob_script_server/catkin_generated/installspace/cob_script_serverConfig.cmake"
    "/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_command_tools/cob_script_server/catkin_generated/installspace/cob_script_serverConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_script_server" TYPE FILE FILES "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_script_server" TYPE DIRECTORY FILES "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/action")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_script_server" TYPE DIRECTORY FILES "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/common")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_script_server" TYPE DIRECTORY FILES "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/launch")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_script_server" TYPE DIRECTORY FILES "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/scripts")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_script_server" TYPE DIRECTORY FILES "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/msg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cob_script_server/src" TYPE PROGRAM FILES
    "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/src/cob_console"
    "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/src/cob_console.py"
    "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/src/script_server.py"
    "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/src/script_to_graph.py"
    "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/src/script_viewer.py"
    "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/src/xdot.py"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cob_script_server/test" TYPE PROGRAM FILES
    "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/test/action_interface.py"
    "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/test/move.py"
    "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/test/python_api.py"
    "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/test/test_say.py"
    "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/test/trigger.py"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

