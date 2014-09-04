# generated from genmsg/cmake/pkg-msg-paths.cmake.em

# message include dirs in installspace
_prepend_path("${cob_script_server_DIR}/.." "msg;msg;msg" cob_script_server_MSG_INCLUDE_DIRS UNIQUE)
set(cob_script_server_MSG_DEPENDENCIES geometry_msgs;std_msgs;actionlib_msgs;trajectory_msgs)
