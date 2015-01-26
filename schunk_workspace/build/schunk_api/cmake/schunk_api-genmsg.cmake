# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "schunk_api: 2 messages, 2 services")

set(MSG_I_FLAGS "-Ischunk_api:/home/powerball/rpi_robotics_work/schunk_workspace/src/schunk_api/msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(schunk_api_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(schunk_api
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/schunk_api/msg/PositionJointSpace.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/schunk_api
)
_generate_msg_cpp(schunk_api
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/schunk_api/msg/PositionCoordSpace.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/schunk_api
)

### Generating Services
_generate_srv_cpp(schunk_api
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/schunk_api/srv/PositionAPIJointSpace.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/schunk_api
)
_generate_srv_cpp(schunk_api
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/schunk_api/srv/PositionAPICoordSpace.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/schunk_api
)

### Generating Module File
_generate_module_cpp(schunk_api
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/schunk_api
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(schunk_api_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(schunk_api_generate_messages schunk_api_generate_messages_cpp)

# target for backward compatibility
add_custom_target(schunk_api_gencpp)
add_dependencies(schunk_api_gencpp schunk_api_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS schunk_api_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(schunk_api
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/schunk_api/msg/PositionJointSpace.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/schunk_api
)
_generate_msg_lisp(schunk_api
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/schunk_api/msg/PositionCoordSpace.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/schunk_api
)

### Generating Services
_generate_srv_lisp(schunk_api
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/schunk_api/srv/PositionAPIJointSpace.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/schunk_api
)
_generate_srv_lisp(schunk_api
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/schunk_api/srv/PositionAPICoordSpace.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/schunk_api
)

### Generating Module File
_generate_module_lisp(schunk_api
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/schunk_api
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(schunk_api_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(schunk_api_generate_messages schunk_api_generate_messages_lisp)

# target for backward compatibility
add_custom_target(schunk_api_genlisp)
add_dependencies(schunk_api_genlisp schunk_api_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS schunk_api_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(schunk_api
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/schunk_api/msg/PositionJointSpace.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_api
)
_generate_msg_py(schunk_api
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/schunk_api/msg/PositionCoordSpace.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_api
)

### Generating Services
_generate_srv_py(schunk_api
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/schunk_api/srv/PositionAPIJointSpace.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_api
)
_generate_srv_py(schunk_api
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/schunk_api/srv/PositionAPICoordSpace.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_api
)

### Generating Module File
_generate_module_py(schunk_api
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_api
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(schunk_api_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(schunk_api_generate_messages schunk_api_generate_messages_py)

# target for backward compatibility
add_custom_target(schunk_api_genpy)
add_dependencies(schunk_api_genpy schunk_api_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS schunk_api_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/schunk_api)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/schunk_api
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(schunk_api_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/schunk_api)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/schunk_api
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(schunk_api_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_api)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_api\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/schunk_api
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(schunk_api_generate_messages_py std_msgs_generate_messages_py)
