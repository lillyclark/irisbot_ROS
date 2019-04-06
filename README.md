# irisbot_ROS

All irisbot code is in the src/irisbot package.
The four nodes are in irisbot/scripts and are: planner (high level control), communication_laptop (TCP with core.py), localization, and movement.

# To Do
- make SimpleMoveCmd.msg in /msg (and update catkin generated files and rebuild) with: rotation speed and drive speed.
- write new update (pull ROS workspace), restart (re-launch ROS nodes), and kill (shutdown ROS nodes) bash files which get called by core.py.
