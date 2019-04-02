#!/usr/bin/env python
# license removed for brevity
import rospy
from std_msgs.msg import String

def callback(data):
    rospy.loginfo(rospy.get_caller_id() + "Received %s", data.data)

def testsub():
    rospy.init_node('testsub', anonymous=True)
    rospy.Subscriber('chatter', String, callback)
    rospy.spin()

if __name__ == '__main__':
    testsub()
