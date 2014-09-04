# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cob_script_server: 15 messages, 1 services")

set(MSG_I_FLAGS "-Icob_script_server:/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg;-Icob_script_server:/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/msg;-Igeometry_msgs:/opt/ros/hydro/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/hydro/share/actionlib_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/hydro/share/trajectory_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cob_script_server_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
)
_generate_msg_cpp(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
)
_generate_msg_cpp(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
)
_generate_msg_cpp(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
)
_generate_msg_cpp(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
)
_generate_msg_cpp(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
)
_generate_msg_cpp(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateResult.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
)
_generate_msg_cpp(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/msg/ScriptState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
)
_generate_msg_cpp(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptResult.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
)
_generate_msg_cpp(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptAction.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptActionGoal.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptResult.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptGoal.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptActionResult.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
)
_generate_msg_cpp(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
)
_generate_msg_cpp(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateGoal.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/msg/ScriptState.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
)
_generate_msg_cpp(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/msg/ScriptState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
)
_generate_msg_cpp(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
)
_generate_msg_cpp(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateActionFeedback.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateResult.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateGoal.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateActionResult.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateActionGoal.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/msg/ScriptState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
)

### Generating Services
_generate_srv_cpp(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/srv/ComposeTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/hydro/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
)

### Generating Module File
_generate_module_cpp(cob_script_server
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cob_script_server_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cob_script_server_generate_messages cob_script_server_generate_messages_cpp)

# target for backward compatibility
add_custom_target(cob_script_server_gencpp)
add_dependencies(cob_script_server_gencpp cob_script_server_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_script_server_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
)
_generate_msg_lisp(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
)
_generate_msg_lisp(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
)
_generate_msg_lisp(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
)
_generate_msg_lisp(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
)
_generate_msg_lisp(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
)
_generate_msg_lisp(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateResult.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
)
_generate_msg_lisp(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/msg/ScriptState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
)
_generate_msg_lisp(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptResult.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
)
_generate_msg_lisp(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptAction.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptActionGoal.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptResult.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptGoal.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptActionResult.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
)
_generate_msg_lisp(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
)
_generate_msg_lisp(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateGoal.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/msg/ScriptState.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
)
_generate_msg_lisp(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/msg/ScriptState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
)
_generate_msg_lisp(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
)
_generate_msg_lisp(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateActionFeedback.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateResult.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateGoal.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateActionResult.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateActionGoal.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/msg/ScriptState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
)

### Generating Services
_generate_srv_lisp(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/srv/ComposeTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/hydro/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
)

### Generating Module File
_generate_module_lisp(cob_script_server
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cob_script_server_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cob_script_server_generate_messages cob_script_server_generate_messages_lisp)

# target for backward compatibility
add_custom_target(cob_script_server_genlisp)
add_dependencies(cob_script_server_genlisp cob_script_server_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_script_server_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
)
_generate_msg_py(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
)
_generate_msg_py(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
)
_generate_msg_py(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
)
_generate_msg_py(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
)
_generate_msg_py(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
)
_generate_msg_py(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateResult.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
)
_generate_msg_py(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/msg/ScriptState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
)
_generate_msg_py(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptResult.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
)
_generate_msg_py(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptAction.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptActionGoal.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptResult.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptGoal.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptActionResult.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
)
_generate_msg_py(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/ScriptFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
)
_generate_msg_py(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateGoal.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/msg/ScriptState.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
)
_generate_msg_py(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/msg/ScriptState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
)
_generate_msg_py(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
)
_generate_msg_py(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateActionFeedback.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateResult.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateGoal.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateActionResult.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_script_server/msg/StateActionGoal.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/msg/ScriptState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
)

### Generating Services
_generate_srv_py(cob_script_server
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/srv/ComposeTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/hydro/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
)

### Generating Module File
_generate_module_py(cob_script_server
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cob_script_server_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cob_script_server_generate_messages cob_script_server_generate_messages_py)

# target for backward compatibility
add_custom_target(cob_script_server_genpy)
add_dependencies(cob_script_server_genpy cob_script_server_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_script_server_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(cob_script_server_generate_messages_cpp geometry_msgs_generate_messages_cpp)
add_dependencies(cob_script_server_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(cob_script_server_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
add_dependencies(cob_script_server_generate_messages_cpp trajectory_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(cob_script_server_generate_messages_lisp geometry_msgs_generate_messages_lisp)
add_dependencies(cob_script_server_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(cob_script_server_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
add_dependencies(cob_script_server_generate_messages_lisp trajectory_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(cob_script_server_generate_messages_py geometry_msgs_generate_messages_py)
add_dependencies(cob_script_server_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(cob_script_server_generate_messages_py actionlib_msgs_generate_messages_py)
add_dependencies(cob_script_server_generate_messages_py trajectory_msgs_generate_messages_py)
