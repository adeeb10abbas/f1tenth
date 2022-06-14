#include <ros/ros.h>
#include "std_msgs/String.h"
#include <sensor_msgs/LaserScan.h>
#include <std_msgs/Float64.h>
#include <limits>
#include <sstream>

class processing {
    public:
        processing(ros::NodeHandle* nh) : _nh(nh) {
            closest_point_pub = _nh->advertise<std_msgs::Float64>("/closest_point", 1);
            farthest_point_pub = _nh->advertise<std_msgs::Float64>("/farthest_point", 1);
        }
    
    void lidarCallback(const sensor_msgs::LaserScan::ConstPtr& msg) {
        ROS_INFO("LaserScan (val,angle)=(%f,%f", msg->range_min, msg->range_max);
        calc(msg);
    }

    void calc(const sensor_msgs::LaserScanConstPtr& m) {
        std::vector<float> all_r = m->ranges;

        for(const float& ma: all_r) {

            if (std::isnan(ma) || std::isinf(ma))
                continue;

            if (min < ma)
                min = ma;

            if (max > ma)
                max = ma;
            }

       // setting up the messages 
        _c.data = min;
        _m.data = max;

        closest_point_pub.publish(_c);
        farthest_point_pub.publish(_m);
    }

    private: 
        ros::NodeHandle* _nh;
        ros::Publisher closest_point_pub;
        ros::Publisher farthest_point_pub;
        float min  = std::numeric_limits<float>::infinity();
        float max = 0.f;
        std_msgs::Float64 _c;
        std_msgs::Float64 _m;
};
int main(int argc, char **argv) {
    ros::init(argc, argv, "Lidar_Listener");
    ros::NodeHandle n;

    processing p(&n);

    ros::Rate loop_rate(100);

    // Subscriber here 
    ros::Subscriber sub = n.subscribe("scan", 100, &processing::lidarCallback, &p);
    ros::spin();
    
    return 0;
}