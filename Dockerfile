FROM ros:kinetic-ros-core-xenial
# should probably do FROM ros:kinetic-ros-base-xenial on the robots

WORKDIR /home/lilly/Desktop/ROSws

COPY ./ .

RUN apt-get update && apt-get install -y \
    ros-kinetic-ros-base=1.3.2-0* \
    && rm -rf /var/lib/apt/lists/*
