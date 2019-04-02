#!/usr/bin/env python

import rospy
from std_msgs.msg import Bool, String
from irisbot.msg import Pose, MoveCmd

class Movement():
    def __init__(self):
        rospy.loginfo("starting movement")
        rospy.init_node('movement')
        self.role = None
        self.pose = Pose()
        self.sub_set_anchor = rospy.Subscriber('set_anchor', Pose, self.set_anchor_CB)
        self.sub_move = rospy.Subscriber('move', MoveCmd, self.drive_CB)
        rospy.spin()

    def set_anchor_CB(self, p):
        rospy.loginfo("as anchor, setting pose")
        self.role = "anchor"
        self.pose.x = p.x
        self.pose.y = p.y
        self.pose.orientation = p.orientation

    def drive_CB(self, m):
        if self.role == "anchor":
            rospy.loginfo("ignoring drive command")
            return
        rospy.loginfo("driving!:%s, %s, %s", m.orientation, m.speed, m.distance)
        # TODO write to m3pi

if __name__ == '__main__':
    movement = Movement()
