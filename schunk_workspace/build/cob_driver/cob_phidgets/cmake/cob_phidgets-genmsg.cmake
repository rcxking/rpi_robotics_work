# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cob_phidgets: 2 messages, 3 services")

set(MSG_I_FLAGS "-Icob_phidgets:/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_phidgets/msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/hydro/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/hydro/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cob_phidgets_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(cob_phidgets
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_phidgets/msg/DigitalSensor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_phidgets
)
_generate_msg_cpp(cob_phidgets
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_phidgets/msg/AnalogSensor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_phidgets
)

### Generating Services
_generate_srv_cpp(cob_phidgets
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_phidgets/srv/SetDigitalSensor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_phidgets
)
_generate_srv_cpp(cob_phidgets
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_phidgets/srv/SetDataRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_phidgets
)
_generate_srv_cpp(cob_phidgets
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_phidgets/srv/SetTriggerValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_phidgets
)

### Generating Module File
_generate_module_cpp(cob_phidgets
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_phidgets
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cob_phidgets_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cob_phidgets_generate_messages cob_phidgets_generate_messages_cpp)

# target for backward compatibility
add_custom_target(cob_phidgets_gencpp)
add_dependencies(cob_phidgets_gencpp cob_phidgets_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_phidgets_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(cob_phidgets
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_phidgets/msg/DigitalSensor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_phidgets
)
_generate_msg_lisp(cob_phidgets
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_phidgets/msg/AnalogSensor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_phidgets
)

### Generating Services
_generate_srv_lisp(cob_phidgets
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_phidgets/srv/SetDigitalSensor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_phidgets
)
_generate_srv_lisp(cob_phidgets
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_phidgets/srv/SetDataRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_phidgets
)
_generate_srv_lisp(cob_phidgets
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_phidgets/srv/SetTriggerValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_phidgets
)

### Generating Module File
_generate_module_lisp(cob_phidgets
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_phidgets
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cob_phidgets_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cob_phidgets_generate_messages cob_phidgets_generate_messages_lisp)

# target for backward compatibility
add_custom_target(cob_phidgets_genlisp)
add_dependencies(cob_phidgets_genlisp cob_phidgets_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_phidgets_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(cob_phidgets
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_phidgets/msg/DigitalSensor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_phidgets
)
_generate_msg_py(cob_phidgets
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_phidgets/msg/AnalogSensor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_phidgets
)

### Generating Services
_generate_srv_py(cob_phidgets
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_phidgets/srv/SetDigitalSensor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_phidgets
)
_generate_srv_py(cob_phidgets
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_phidgets/srv/SetDataRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_phidgets
)
_generate_srv_py(cob_phidgets
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_driver/cob_phidgets/srv/SetTriggerValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_phidgets
)

### Generating Module File
_generate_module_py(cob_phidgets
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_phidgets
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cob_phidgets_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cob_phidgets_generate_messages cob_phidgets_generate_messages_py)

# target for backward compatibility
add_custom_target(cob_phidgets_genpy)
add_dependencies(cob_phidgets_genpy cob_phidgets_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_phidgets_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_phidgets)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_phidgets
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(cob_phidgets_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(cob_phidgets_generate_messages_cpp sensor_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_phidgets)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_phidgets
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(cob_phidgets_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(cob_phidgets_generate_messages_lisp sensor_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_phidgets)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_phidgets\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_phidgets
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(cob_phidgets_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(cob_phidgets_generate_messages_py sensor_msgs_generate_messages_py)
