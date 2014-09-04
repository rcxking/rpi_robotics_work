# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cob_light: 8 messages, 1 services")

set(MSG_I_FLAGS "-Icob_light:/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_light/msg;-Icob_light:/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg;-Iactionlib_msgs:/opt/ros/hydro/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/hydro/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cob_light_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(cob_light
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_light
)
_generate_msg_cpp(cob_light
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_light
)
_generate_msg_cpp(cob_light
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_light/msg/LightMode.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_light
)
_generate_msg_cpp(cob_light
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_light/msg/LightMode.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_light
)
_generate_msg_cpp(cob_light
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_light
)
_generate_msg_cpp(cob_light
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeResult.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeActionGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_light/msg/LightMode.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeFeedback.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeActionResult.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeGoal.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_light
)
_generate_msg_cpp(cob_light
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeResult.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_light
)
_generate_msg_cpp(cob_light
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_light/msg/LightMode.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_light
)

### Generating Services
_generate_srv_cpp(cob_light
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_light/srv/SetLightMode.srv"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_light/msg/LightMode.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_light
)

### Generating Module File
_generate_module_cpp(cob_light
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_light
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cob_light_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cob_light_generate_messages cob_light_generate_messages_cpp)

# target for backward compatibility
add_custom_target(cob_light_gencpp)
add_dependencies(cob_light_gencpp cob_light_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_light_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(cob_light
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_light
)
_generate_msg_lisp(cob_light
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_light
)
_generate_msg_lisp(cob_light
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_light/msg/LightMode.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_light
)
_generate_msg_lisp(cob_light
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_light/msg/LightMode.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_light
)
_generate_msg_lisp(cob_light
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_light
)
_generate_msg_lisp(cob_light
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeResult.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeActionGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_light/msg/LightMode.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeFeedback.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeActionResult.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeGoal.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_light
)
_generate_msg_lisp(cob_light
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeResult.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_light
)
_generate_msg_lisp(cob_light
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_light/msg/LightMode.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_light
)

### Generating Services
_generate_srv_lisp(cob_light
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_light/srv/SetLightMode.srv"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_light/msg/LightMode.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_light
)

### Generating Module File
_generate_module_lisp(cob_light
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_light
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cob_light_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cob_light_generate_messages cob_light_generate_messages_lisp)

# target for backward compatibility
add_custom_target(cob_light_genlisp)
add_dependencies(cob_light_genlisp cob_light_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_light_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(cob_light
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_light
)
_generate_msg_py(cob_light
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_light
)
_generate_msg_py(cob_light
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_light/msg/LightMode.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_light
)
_generate_msg_py(cob_light
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_light/msg/LightMode.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_light
)
_generate_msg_py(cob_light
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_light
)
_generate_msg_py(cob_light
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeResult.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeActionGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_light/msg/LightMode.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeFeedback.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeActionResult.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeGoal.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_light
)
_generate_msg_py(cob_light
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeResult.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_light
)
_generate_msg_py(cob_light
  "/home/powerball/rpi_robotics_work/schunk_workspace/devel/share/cob_light/msg/SetLightModeGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_light/msg/LightMode.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_light
)

### Generating Services
_generate_srv_py(cob_light
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_light/srv/SetLightMode.srv"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_light/msg/LightMode.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_light
)

### Generating Module File
_generate_module_py(cob_light
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_light
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cob_light_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cob_light_generate_messages cob_light_generate_messages_py)

# target for backward compatibility
add_custom_target(cob_light_genpy)
add_dependencies(cob_light_genpy cob_light_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_light_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_light)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_light
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(cob_light_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
add_dependencies(cob_light_generate_messages_cpp geometry_msgs_generate_messages_cpp)
add_dependencies(cob_light_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_light)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_light
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(cob_light_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
add_dependencies(cob_light_generate_messages_lisp geometry_msgs_generate_messages_lisp)
add_dependencies(cob_light_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_light)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_light\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_light
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(cob_light_generate_messages_py actionlib_msgs_generate_messages_py)
add_dependencies(cob_light_generate_messages_py geometry_msgs_generate_messages_py)
add_dependencies(cob_light_generate_messages_py std_msgs_generate_messages_py)
