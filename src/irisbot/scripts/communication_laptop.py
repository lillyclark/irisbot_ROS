#!/usr/bin/env python

import rospy
import socket
from std_msgs.msg import Bool, String
from irisbot.msg import Pose, MoveCmd

class Communication_Laptop():
    def __init__(self):
        rospy.loginfo("starting communication_laptop")
        rospy.init_node('communication_laptop')
        self.pub_move = rospy.Publisher('move', MoveCmd, queue_size=10)
        s = self.create_server_socket()

        while not rospy.core.is_shutdown():
                rospy.loginfo("listening for TCP data")
                (connection, address) = s.accept()
                rospy.loginfo("received TCP data")
                try:
                    data = connection.recv(20)
                    if data == b'k':
                        connection.close()
                        rospy.signal_shutdown("User killed communication_laptop node")
                    else:
                        orientation, speed, distance = eval(data.decode('utf-8'))
                        self.drive(orientation, speed, distance)
                finally:
                    connection.close()

    def drive(self, orientation, speed, distance):
        rospy.loginfo("sending drive cmd")
        m = MoveCmd()
        m.orientation = orientation
        m.speed = speed
        m.distance = distance
        self.pub_move.publish(m)

    def create_server_socket(self):
        rospy.loginfo("creating TCP server socket")
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        s.bind(('127.0.0.1', 3535))
        s.listen(1)
        return s

if __name__ == '__main__':
    communication_laptop = Communication_Laptop()
