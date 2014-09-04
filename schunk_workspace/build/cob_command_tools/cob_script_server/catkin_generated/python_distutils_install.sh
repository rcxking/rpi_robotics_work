#!/bin/sh -x

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

cd "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
/usr/bin/env \
    PYTHONPATH="/home/powerball/rpi_robotics_work/schunk_workspace/install/lib/python2.7/dist-packages:/home/powerball/rpi_robotics_work/schunk_workspace/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/powerball/rpi_robotics_work/schunk_workspace/build" \
    "/usr/bin/python" \
    "/home/powerball/rpi_robotics_work/schunk_workspace/src/cob_command_tools/cob_script_server/setup.py" \
    build --build-base "/home/powerball/rpi_robotics_work/schunk_workspace/build/cob_command_tools/cob_script_server" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/powerball/rpi_robotics_work/schunk_workspace/install" --install-scripts="/home/powerball/rpi_robotics_work/schunk_workspace/install/bin"
