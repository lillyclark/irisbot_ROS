#!/usr/bin/env python

import rospy
import sys
from std_msgs.msg import Bool
from irisbot.msg import Pose, MoveCmd, Node, NodeLoc, NodeMsg
from irisbot.srv import *

class Planner():
    def __init__(self, role):
        rospy.loginfo("starting planner")
        rospy.init_node('planner')

        self.pub_set_anchor = rospy.Publisher('set_anchor', Pose, queue_size=1)
        self.pub_move = rospy.Publisher('move', MoveCmd, queue_size=10)
        rospy.sleep(1) # wait for other nodes to start

        self.ID = 0
        self.addr = 0
        self.role = None
        self.pose = Pose()

        self.anchors = []

        if role == "anchor":
            self.set_anchor(0.0, 0.0, 0.0)
        else:
            # commands to get_anchor must be iterable
            self.get_anchor()
            self.get_anchor([1])
            self.get_anchor((1,2,3))

        rospy.spin()

    def set_anchor(self, x, y, orientation):
        rospy.loginfo("planner: setting self as anchor")
        self.role = "anchor"
        self.pose.x = x
        self.pose.y = y
        self.pose.orientation = orientation
        self.pub_set_anchor.publish(self.pose)

    def drive(self, orientation, speed, distance):
        rospy.loginfo("sending drive cmd")
        m = MoveCmd()
        m.orientation = orientation
        m.speed = speed
        m.distance = distance
        self.pub_move.publish(m)

    def get_anchor(self, ids=[-1]):
        rospy.wait_for_service('get_anchor')
        get_anchor_proxy = rospy.ServiceProxy('get_anchor', GetAnchor)
        get_anchor_response = get_anchor_proxy(ids)
        anchors, dists = get_anchor_response.anchors, get_anchor_response.dists
        for i in range(len(anchors)):
            rospy.loginfo('Found Anchor %s at distance %s', anchors[i].node.ID, dists[i])

if __name__ == '__main__':
    role = sys.argv[1]
    planner = Planner(role)
