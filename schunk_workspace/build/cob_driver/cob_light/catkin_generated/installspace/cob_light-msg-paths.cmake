# generated from genmsg/cmake/pkg-msg-paths.cmake.em

# message include dirs in installspace
_prepend_path("${cob_light_DIR}/.." "msg;msg" cob_light_MSG_INCLUDE_DIRS UNIQUE)
set(cob_light_MSG_DEPENDENCIES actionlib_msgs;geometry_msgs;std_msgs)
