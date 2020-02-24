#ifndef EXAMPLE_ROS_H
#define EXAMPLE_ROS_H

#include <ros/ros.h>
#include "std_msgs/ColorRGBA.h"
#include "std_msgs/Header.h"
#include "arbotix_msgs/Digital.h"
#include <string>

class ExampleRos {
    public:
        ExampleRos(ros::NodeHandle* nh);

    private:
        // 定义节点句柄
        ros::NodeHandle mnh_;

        // 订阅std_msgs::ColorRGBA话题
        ros::Subscriber msub_color_;
        // 订阅arbotix::Digital话题
        ros::Subscriber msub_arbot_;

        // 发布std_msgs::Header话题
        ros::Publisher mpub_header_;

        // 用于发布的类型
        std_msgs::Header mhead_;
        int mcount_;

        // ------初始化函数-------
        // 初始化sub_color话题
        void InitSubColor_();

        // 初始化sub_arbot话题
        void InitSubArbot_();

        // 初始化pub_header话题
        void InitPubHeader_();

        // ------回调函数-------
        // std_msgs::ColorRGBA的回调函数
        void ColorCallback(const std_msgs::ColorRGBA::ConstPtr& color);

        // arbotix_msgs::Digital的回调函数
        void ArbotCallback(const arbotix_msgs::Digital::ConstPtr& arbot, std::string& name);
};


#endif // EXAMPLE_ROS_H