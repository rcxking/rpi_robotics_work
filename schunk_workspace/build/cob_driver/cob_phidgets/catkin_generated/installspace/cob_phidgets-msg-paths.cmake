# generated from genmsg/cmake/pkg-msg-paths.cmake.em

# message include dirs in installspace
_prepend_path("${cob_phidgets_DIR}/.." "msg" cob_phidgets_MSG_INCLUDE_DIRS UNIQUE)
set(cob_phidgets_MSG_DEPENDENCIES std_msgs;sensor_msgs)
