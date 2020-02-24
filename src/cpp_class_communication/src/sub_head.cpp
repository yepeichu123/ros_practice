#include <ros/ros.h>
#include "std_msgs/Header.h"
#include "std_msgs/ColorRGBA.h"
#include "arbotix_msgs/Digital.h"

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
    ros::Publisher pub_color = n.advertise<aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa

    ros::spin();

    return 0;
}