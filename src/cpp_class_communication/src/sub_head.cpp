#include <ros/ros.h>
#include "std_msgs/Header.h"
#include "std_msgs/ColorRGBA.h"
#include "arbotix_msgs/Digital.h"
#include <string>
#include <sstream>

void HeaderCallback(const std_msgs::Header::ConstPtr& head) {
    double t = head->stamp.toSec();
    ROS_INFO("Receive infomation in main function, seq = %d, frame_id = %s, timestamp = %f,", (int)head->seq, head->frame_id.c_str(), t);
}

int main(int argc, char** argv) {

    ros::init(argc, argv, "my_sub_test");

    ros::NodeHandle n;

    ros::Subscriber sub_head = n.subscribe<std_msgs::Header>("pub_header", 1000, HeaderCallback);

    // 发布example_ros中的节点需要的类型
    ros::Publisher pub_arbot = n.advertise<arbotix_msgs::Digital>("sub_arbot", 1000);
    ros::Publisher pub_color = n.advertise<std_msgs::ColorRGBA>("sub_color", 1000);

    int count = 1;
    ros::Rate r(1);

    while (ros::ok()) {

        arbotix_msgs::Digital dgt;
        if (count == 256) {
            count = 0;
        }
        dgt.value = count++;
        dgt.direction = count;
        pub_arbot.publish(dgt);

        std_msgs::ColorRGBA color;
        color.r = 1 + 0.1 * count;
        color.g = 10 + 0.1 * count;
        color.b = 100 + 0.1 * count;
        color.a = 0.5;
        pub_color.publish(color);

        ros::spinOnce();

        r.sleep();
    }

    return 0;
}