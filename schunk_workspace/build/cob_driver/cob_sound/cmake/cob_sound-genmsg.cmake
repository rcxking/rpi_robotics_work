# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cob_sound: 7 messages, 1 services")

set(MSG_I_FLAGS "-Icob_sound:/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg;-Iactionlib_msgs:/opt/ros/hydro/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/hydro/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cob_sound_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(cob_sound
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_sound
)
_generate_msg_cpp(cob_sound
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_sound
)
_generate_msg_cpp(cob_sound
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayResult.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_sound
)
_generate_msg_cpp(cob_sound
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_sound
)
_generate_msg_cpp(cob_sound
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_sound
)
_generate_msg_cpp(cob_sound
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_sound
)
_generate_msg_cpp(cob_sound
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayAction.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayResult.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayActionGoal.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayActionResult.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayFeedback.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_sound
)

### Generating Services
_generate_srv_cpp(cob_sound
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_sound/srv/SayText.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_sound
)

### Generating Module File
_generate_module_cpp(cob_sound
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_sound
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cob_sound_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cob_sound_generate_messages cob_sound_generate_messages_cpp)

# target for backward compatibility
add_custom_target(cob_sound_gencpp)
add_dependencies(cob_sound_gencpp cob_sound_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_sound_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(cob_sound
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_sound
)
_generate_msg_lisp(cob_sound
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_sound
)
_generate_msg_lisp(cob_sound
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayResult.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_sound
)
_generate_msg_lisp(cob_sound
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_sound
)
_generate_msg_lisp(cob_sound
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_sound
)
_generate_msg_lisp(cob_sound
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_sound
)
_generate_msg_lisp(cob_sound
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayAction.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayResult.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayActionGoal.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayActionResult.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayFeedback.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_sound
)

### Generating Services
_generate_srv_lisp(cob_sound
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_sound/srv/SayText.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_sound
)

### Generating Module File
_generate_module_lisp(cob_sound
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_sound
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cob_sound_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cob_sound_generate_messages cob_sound_generate_messages_lisp)

# target for backward compatibility
add_custom_target(cob_sound_genlisp)
add_dependencies(cob_sound_genlisp cob_sound_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_sound_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(cob_sound
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_sound
)
_generate_msg_py(cob_sound
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_sound
)
_generate_msg_py(cob_sound
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayResult.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_sound
)
_generate_msg_py(cob_sound
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_sound
)
_generate_msg_py(cob_sound
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_sound
)
_generate_msg_py(cob_sound
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_sound
)
_generate_msg_py(cob_sound
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayAction.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayResult.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayActionGoal.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayActionResult.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayFeedback.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_sound/msg/SayActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_sound
)

### Generating Services
_generate_srv_py(cob_sound
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_sound/srv/SayText.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_sound
)

### Generating Module File
_generate_module_py(cob_sound
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_sound
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cob_sound_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cob_sound_generate_messages cob_sound_generate_messages_py)

# target for backward compatibility
add_custom_target(cob_sound_genpy)
add_dependencies(cob_sound_genpy cob_sound_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_sound_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_sound)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_sound
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(cob_sound_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
add_dependencies(cob_sound_generate_messages_cpp geometry_msgs_generate_messages_cpp)
add_dependencies(cob_sound_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_sound)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_sound
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(cob_sound_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
add_dependencies(cob_sound_generate_messages_lisp geometry_msgs_generate_messages_lisp)
add_dependencies(cob_sound_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_sound)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_sound\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_sound
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(cob_sound_generate_messages_py actionlib_msgs_generate_messages_py)
add_dependencies(cob_sound_generate_messages_py geometry_msgs_generate_messages_py)
add_dependencies(cob_sound_generate_messages_py std_msgs_generate_messages_py)
