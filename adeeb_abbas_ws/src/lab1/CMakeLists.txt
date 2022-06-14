cmake_minimum_required(VERSION 2.8.3)
project(lab1)

find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs sensor_msgs genmsg message_generation)
include_directories(${catkin_INCLUDE_DIRS})

##add_message_files(DIRECTORY msg FILES LaserScan.msg)

## Generate added messages and services
generate_messages(DEPENDENCIES sensor_msgs std_msgs)

## Declare a catkin package
catkin_package()

include_directories(include ${catkin_INCLUDE_DIRS})

add_executable(listener src/listener.cpp)
target_link_libraries(listener ${catkin_LIBRARIES})
