import socket
import sys

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(('127.0.0.1', 3535))

if sys.argv[1] == 'k':
    try:
        s.sendall(b'k') # kill flag to smoothly shutdown ROS communication node
    finally:
        s.close()

else:
    try:
        orientation = int(sys.argv[1])
        speed = int(sys.argv[2])
        distance = int(sys.argv[3])
    except:
        raise ValueError("command line arguments should be three integers (orientation, speed, distance) separated by spaces")

    try:
        s.sendall(str((orientation, speed, distance)).encode('utf-8'))
    finally:
        s.close()
