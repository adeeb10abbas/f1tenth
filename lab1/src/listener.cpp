#include <ros/ros.h>
#include "std_msgs/String.h"
#include <sensor_msgs/LaserScan.h>
#include <sstream>

void lidarCallback(const sensor_msgs::LaserScan::ConstPtr& msg) {
    ROS_INFO("LaserScan (val,angle)=(%f,%f", msg->range_min,msg->angle_min);
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "Lidar Listener");
    ros::NodeHandle n;
    
    // Subscriber here 
    ros::Subscriber sub = n.subscribe("scan", 1000, lidarCallback);
    ros::spin();
    
    return 0;
}