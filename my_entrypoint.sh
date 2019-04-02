#!/bin/bash
set -e

# setup ros environment
source "devel/setup.bash"
#source "/opt/ros/$ROS_DISTRO/setup.bash"

exec "$@"
