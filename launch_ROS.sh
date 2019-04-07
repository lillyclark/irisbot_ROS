#!/bin/sh
source devel/setup.bash
catkin_make
roslaunch --pid=/tmp/launch.pid irisbot irisbot.launch role:="anchor"
