#include "example_ros.h"

ExampleRos::ExampleRos(ros::NodeHandle* nh) : mnh_(*nh) {
    
    InitSubColor_();

    InitSubArbot_();

    InitPubHeader_();

    mcount_ = 0;
}

void ExampleRos::InitSubColor_() {
    msub_color_ = mnh_.subscribe("sub_color", 1, &ExampleRos::ColorCallback, this);
}

void ExampleRos::InitSubArbot_() {
    std::string name = "Yepeichu";
    msub_arbot_ = mnh_.subscribe<arbotix_msgs::Digital>("sub_arbot", 1, boost::bind(&ExampleRos::ArbotCallback, this, _1, name));

}

void ExampleRos::InitPubHeader_() {
    mpub_header_ = mnh_.advertise<std_msgs::Header>("pub_header", 10);
}

// std_msgs::ColorRGBA的回调函数
void ExampleRos::ColorCallback(const std_msgs::ColorRGBA::ConstPtr& color) {
    ROS_INFO("[Call function ColorCallback()]:");
    ROS_INFO("We receive color : r = %f, g = %f, b = %f, a = %f", color->r, color->g, color->b, color->a);
}

// arbotix_msgs::Digital的回调函数
void ExampleRos::ArbotCallback(const arbotix_msgs::Digital::ConstPtr& arbot, std::string& name) {
    ROS_INFO("[call function ArboxCallback()]:");
    ROS_INFO("We receive another paramerter, name = %s", name.c_str());
    ROS_INFO("We receive arbotix_msgs : value = %d, direction = %d", arbot->value, arbot->direction);

    mhead_.frame_id = name;
    mhead_.stamp = ros::Time::now();
    mhead_.seq = mcount_++;
    mpub_header_.publish(mhead_);
}