cmake_minimum_required(VERSION 2.8.3)
project(lab1)

find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs genmsg)

include_directories(${catkin_INCLUDE_DIRS})

add_message_files(DIRECTORY msg LaserScan.msg)

## Generate added messages and services
generate_messages(DEPENDENCIES FILES std_msgs)

## Declare a catkin package
catkin_package()

include_directories(include ${catkin_INCLUDE_DIRS})

add_executable(listener src/listener.cpp)
target_link_libraries(listener ${catkin_LIBRARIES})