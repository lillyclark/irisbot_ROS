#!/bin/sh
if bash kill_ROS.sh; then
    sleep 2
    source devel/setup.bash
    catkin_make
    roslaunch --pid=/tmp/launch.pid irisbot irisbot.launch role:="anchor"
else
    source devel/setup.bash
    catkin_make
    roslaunch --pid=/tmp/launch.pid irisbot irisbot.launch role:="anchor"
fi
