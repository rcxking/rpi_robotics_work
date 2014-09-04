# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "schunk_sdh: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ischunk_sdh:/home/powerball/rpi_robotics_work/schunk_workspace/src/schunk_modular_robotics/schunk_sdh/msg;-Itrajectory_msgs:/opt/ros/hydro/share/trajectory_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/hydro/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg;-Icontrol_msgs:/opt/ros/hydro/share/control_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/hydro/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/hydro/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(schunk_sdh_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(schunk_sdh
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/schunk_modular_robotics/schunk_sdh/msg/TactileMatrix.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/schunk_sdh
)
_generate_msg_cpp(schunk_sdh
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/schunk_modular_robotics/schunk_sdh/msg/TactileSensor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/schunk_modular_robotics/schunk_sdh/msg/TactileMatrix.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/schunk_sdh
)

### Generating Services

### Generating Module File
_generate_module_cpp(schunk_sdh
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/schunk_sdh
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(schunk_sdh_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(schunk_sdh_generate_messages schunk_sdh_generate_messages_cpp)

# target for backward compatibility
add_custom_target(schunk_sdh_gencpp)
add_dependencies(schunk_sdh_gencpp schunk_sdh_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS schunk_sdh_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(schunk_sdh
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/schunk_modular_robotics/schunk_sdh/msg/TactileMatrix.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/schunk_sdh
)
_generate_msg_lisp(schunk_sdh
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/schunk_modular_robotics/schunk_sdh/msg/TactileSensor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/schunk_modular_robotics/schunk_sdh/msg/TactileMatrix.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/schunk_sdh
)

### Generating Services

### Generating Module File
_generate_module_lisp(schunk_sdh
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/schunk_sdh
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(schunk_sdh_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(schunk_sdh_generate_messages schunk_sdh_generate_messages_lisp)

# target for backward compatibility
add_custom_target(schunk_sdh_genlisp)
add_dependencies(schunk_sdh_genlisp schunk_sdh_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS schunk_sdh_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(schunk_sdh
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/schunk_modular_robotics/schunk_sdh/msg/TactileMatrix.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_sdh
)
_generate_msg_py(schunk_sdh
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/schunk_modular_robotics/schunk_sdh/msg/TactileSensor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/schunk_modular_robotics/schunk_sdh/msg/TactileMatrix.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_sdh
)

### Generating Services

### Generating Module File
_generate_module_py(schunk_sdh
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_sdh
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(schunk_sdh_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(schunk_sdh_generate_messages schunk_sdh_generate_messages_py)

# target for backward compatibility
add_custom_target(schunk_sdh_genpy)
add_dependencies(schunk_sdh_genpy schunk_sdh_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS schunk_sdh_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/schunk_sdh)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/schunk_sdh
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(schunk_sdh_generate_messages_cpp trajectory_msgs_generate_messages_cpp)
add_dependencies(schunk_sdh_generate_messages_cpp sensor_msgs_generate_messages_cpp)
add_dependencies(schunk_sdh_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(schunk_sdh_generate_messages_cpp control_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/schunk_sdh)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/schunk_sdh
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(schunk_sdh_generate_messages_lisp trajectory_msgs_generate_messages_lisp)
add_dependencies(schunk_sdh_generate_messages_lisp sensor_msgs_generate_messages_lisp)
add_dependencies(schunk_sdh_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(schunk_sdh_generate_messages_lisp control_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_sdh)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_sdh\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_sdh
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(schunk_sdh_generate_messages_py trajectory_msgs_generate_messages_py)
add_dependencies(schunk_sdh_generate_messages_py sensor_msgs_generate_messages_py)
add_dependencies(schunk_sdh_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(schunk_sdh_generate_messages_py control_msgs_generate_messages_py)
