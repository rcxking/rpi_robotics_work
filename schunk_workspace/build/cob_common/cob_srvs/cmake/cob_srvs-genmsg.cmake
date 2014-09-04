# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cob_srvs: 0 messages, 10 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/hydro/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/hydro/share/trajectory_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cob_srvs_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(cob_srvs
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/cob_srvs/srv/Trigger.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_srvs
)
_generate_srv_cpp(cob_srvs
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/cob_srvs/srv/SetInt.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_srvs
)
_generate_srv_cpp(cob_srvs
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/cob_srvs/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_srvs
)
_generate_srv_cpp(cob_srvs
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/cob_srvs/srv/SetOperationMode.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_srvs
)
_generate_srv_cpp(cob_srvs
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/cob_srvs/srv/SetJointTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg;/opt/ros/hydro/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/hydro/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_srvs
)
_generate_srv_cpp(cob_srvs
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/cob_srvs/srv/SetMaxVel.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_srvs
)
_generate_srv_cpp(cob_srvs
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/cob_srvs/srv/SetDefaultVel.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_srvs
)
_generate_srv_cpp(cob_srvs
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/cob_srvs/srv/SetFloat.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_srvs
)
_generate_srv_cpp(cob_srvs
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/cob_srvs/srv/GetPoseStampedTransformed.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_srvs
)
_generate_srv_cpp(cob_srvs
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/cob_srvs/srv/SetJointStiffness.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_srvs
)

### Generating Module File
_generate_module_cpp(cob_srvs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_srvs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cob_srvs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cob_srvs_generate_messages cob_srvs_generate_messages_cpp)

# target for backward compatibility
add_custom_target(cob_srvs_gencpp)
add_dependencies(cob_srvs_gencpp cob_srvs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_srvs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(cob_srvs
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/cob_srvs/srv/Trigger.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_srvs
)
_generate_srv_lisp(cob_srvs
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/cob_srvs/srv/SetInt.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_srvs
)
_generate_srv_lisp(cob_srvs
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/cob_srvs/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_srvs
)
_generate_srv_lisp(cob_srvs
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/cob_srvs/srv/SetOperationMode.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_srvs
)
_generate_srv_lisp(cob_srvs
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/cob_srvs/srv/SetJointTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg;/opt/ros/hydro/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/hydro/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_srvs
)
_generate_srv_lisp(cob_srvs
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/cob_srvs/srv/SetMaxVel.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_srvs
)
_generate_srv_lisp(cob_srvs
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/cob_srvs/srv/SetDefaultVel.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_srvs
)
_generate_srv_lisp(cob_srvs
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/cob_srvs/srv/SetFloat.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_srvs
)
_generate_srv_lisp(cob_srvs
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/cob_srvs/srv/GetPoseStampedTransformed.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_srvs
)
_generate_srv_lisp(cob_srvs
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/cob_srvs/srv/SetJointStiffness.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_srvs
)

### Generating Module File
_generate_module_lisp(cob_srvs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_srvs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cob_srvs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cob_srvs_generate_messages cob_srvs_generate_messages_lisp)

# target for backward compatibility
add_custom_target(cob_srvs_genlisp)
add_dependencies(cob_srvs_genlisp cob_srvs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_srvs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(cob_srvs
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/cob_srvs/srv/Trigger.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_srvs
)
_generate_srv_py(cob_srvs
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/cob_srvs/srv/SetInt.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_srvs
)
_generate_srv_py(cob_srvs
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/cob_srvs/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_srvs
)
_generate_srv_py(cob_srvs
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/cob_srvs/srv/SetOperationMode.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_srvs
)
_generate_srv_py(cob_srvs
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/cob_srvs/srv/SetJointTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg;/opt/ros/hydro/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/hydro/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_srvs
)
_generate_srv_py(cob_srvs
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/cob_srvs/srv/SetMaxVel.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_srvs
)
_generate_srv_py(cob_srvs
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/cob_srvs/srv/SetDefaultVel.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_srvs
)
_generate_srv_py(cob_srvs
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/cob_srvs/srv/SetFloat.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_srvs
)
_generate_srv_py(cob_srvs
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/cob_srvs/srv/GetPoseStampedTransformed.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_srvs
)
_generate_srv_py(cob_srvs
  "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_common/cob_srvs/srv/SetJointStiffness.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_srvs
)

### Generating Module File
_generate_module_py(cob_srvs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_srvs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cob_srvs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cob_srvs_generate_messages cob_srvs_generate_messages_py)

# target for backward compatibility
add_custom_target(cob_srvs_genpy)
add_dependencies(cob_srvs_genpy cob_srvs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_srvs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_srvs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(cob_srvs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
add_dependencies(cob_srvs_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(cob_srvs_generate_messages_cpp trajectory_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_srvs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(cob_srvs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
add_dependencies(cob_srvs_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(cob_srvs_generate_messages_lisp trajectory_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_srvs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_srvs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_srvs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(cob_srvs_generate_messages_py geometry_msgs_generate_messages_py)
add_dependencies(cob_srvs_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(cob_srvs_generate_messages_py trajectory_msgs_generate_messages_py)
