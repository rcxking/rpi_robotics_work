# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "brics_actuator: 12 messages, 0 services")

set(MSG_I_FLAGS "-Ibrics_actuator:/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg;-Igeometry_msgs:/opt/ros/hydro/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(brics_actuator_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/CartesianVector.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/brics_actuator
)
_generate_msg_cpp(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointConstraint.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/brics_actuator
)
_generate_msg_cpp(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointImpedances.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/Poison.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/brics_actuator
)
_generate_msg_cpp(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointPositions.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/Poison.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/brics_actuator
)
_generate_msg_cpp(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointAccelerations.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/Poison.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/brics_actuator
)
_generate_msg_cpp(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointTorques.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/Poison.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/brics_actuator
)
_generate_msg_cpp(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/CartesianPose.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/CartesianVector.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/Poison.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/brics_actuator
)
_generate_msg_cpp(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/CartesianWrench.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/CartesianVector.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/Poison.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/brics_actuator
)
_generate_msg_cpp(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/CartesianTwist.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/CartesianVector.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/Poison.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/brics_actuator
)
_generate_msg_cpp(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/Poison.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/brics_actuator
)
_generate_msg_cpp(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointValue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/brics_actuator
)
_generate_msg_cpp(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointVelocities.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/Poison.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/brics_actuator
)

### Generating Services

### Generating Module File
_generate_module_cpp(brics_actuator
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/brics_actuator
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(brics_actuator_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(brics_actuator_generate_messages brics_actuator_generate_messages_cpp)

# target for backward compatibility
add_custom_target(brics_actuator_gencpp)
add_dependencies(brics_actuator_gencpp brics_actuator_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS brics_actuator_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/CartesianVector.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/brics_actuator
)
_generate_msg_lisp(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointConstraint.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/brics_actuator
)
_generate_msg_lisp(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointImpedances.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/Poison.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/brics_actuator
)
_generate_msg_lisp(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointPositions.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/Poison.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/brics_actuator
)
_generate_msg_lisp(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointAccelerations.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/Poison.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/brics_actuator
)
_generate_msg_lisp(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointTorques.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/Poison.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/brics_actuator
)
_generate_msg_lisp(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/CartesianPose.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/CartesianVector.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/Poison.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/brics_actuator
)
_generate_msg_lisp(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/CartesianWrench.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/CartesianVector.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/Poison.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/brics_actuator
)
_generate_msg_lisp(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/CartesianTwist.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/CartesianVector.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/Poison.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/brics_actuator
)
_generate_msg_lisp(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/Poison.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/brics_actuator
)
_generate_msg_lisp(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointValue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/brics_actuator
)
_generate_msg_lisp(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointVelocities.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/Poison.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/brics_actuator
)

### Generating Services

### Generating Module File
_generate_module_lisp(brics_actuator
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/brics_actuator
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(brics_actuator_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(brics_actuator_generate_messages brics_actuator_generate_messages_lisp)

# target for backward compatibility
add_custom_target(brics_actuator_genlisp)
add_dependencies(brics_actuator_genlisp brics_actuator_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS brics_actuator_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/CartesianVector.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/brics_actuator
)
_generate_msg_py(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointConstraint.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/brics_actuator
)
_generate_msg_py(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointImpedances.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/Poison.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/brics_actuator
)
_generate_msg_py(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointPositions.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/Poison.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/brics_actuator
)
_generate_msg_py(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointAccelerations.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/Poison.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/brics_actuator
)
_generate_msg_py(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointTorques.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/Poison.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/brics_actuator
)
_generate_msg_py(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/CartesianPose.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/CartesianVector.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/Poison.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/brics_actuator
)
_generate_msg_py(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/CartesianWrench.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/CartesianVector.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/Poison.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/brics_actuator
)
_generate_msg_py(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/CartesianTwist.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/CartesianVector.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/Poison.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/brics_actuator
)
_generate_msg_py(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/Poison.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/brics_actuator
)
_generate_msg_py(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointValue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/brics_actuator
)
_generate_msg_py(brics_actuator
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointVelocities.msg"
  "${MSG_I_FLAGS}"
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/Poison.msg;/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/brics_actuator/msg/JointValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/brics_actuator
)

### Generating Services

### Generating Module File
_generate_module_py(brics_actuator
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/brics_actuator
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(brics_actuator_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(brics_actuator_generate_messages brics_actuator_generate_messages_py)

# target for backward compatibility
add_custom_target(brics_actuator_genpy)
add_dependencies(brics_actuator_genpy brics_actuator_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS brics_actuator_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/brics_actuator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/brics_actuator
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(brics_actuator_generate_messages_cpp geometry_msgs_generate_messages_cpp)
add_dependencies(brics_actuator_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/brics_actuator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/brics_actuator
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(brics_actuator_generate_messages_lisp geometry_msgs_generate_messages_lisp)
add_dependencies(brics_actuator_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/brics_actuator)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/brics_actuator\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/brics_actuator
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(brics_actuator_generate_messages_py geometry_msgs_generate_messages_py)
add_dependencies(brics_actuator_generate_messages_py std_msgs_generate_messages_py)
