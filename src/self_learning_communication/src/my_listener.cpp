/*
 * 本代码由叶培楚完成，邮箱：403806710@qq.com
 * 完成消息节点的声明和消息的订阅
 * 有关消息类型的具体信息可以参考my_talker.cpp中的说明
 * 在这里写了三种不同的订阅函数（具有不同输入变量数量的回调函数）
 * 常规的函数就是myColorCallback，直接通过subscribe函数调用该回调函数
 * 当我们需要给回调函数传参时，就需要用到boost::bind()函数，但是输入其他变量之前，需要为订阅类型提供一个占位符
 * 比如：boost::bind(myHeaderCallback, _1, name)
 * 同理，当需要用到多个时，自然便是：boost::bind(myHeaderCallback, _1, arg1, arg2, ..., argn)
 * 当然，也可以写成：boost::bind(myHeaderCallback, name, _1)，但是相应的myHeaderCallback的变量数据类型顺序也需要改变
 * 比如：myHeaderCallback(...head, ...name)需要改成myHeaderCallback(...name, ...head)
*/

#include <string>
#include <ros/ros.h>
#include "std_msgs/ColorRGBA.h"
#include "std_msgs/Header.h"
#include "arbotix_msgs/Digital.h"

void myColorCallback(const std_msgs::ColorRGBA::ConstPtr& color) {
    ROS_INFO("recerived color info : r = %f, g = %f, b = %f", color->r, color->g, color->b);
}

void myHeaderCallbacktest(std::string name, const std_msgs::Header::ConstPtr& head) {
    double t = head->stamp.toSec();
    ROS_INFO("received header : seq = %d, stamp = %f, frame_id = %s", head->seq, t, head->frame_id.c_str());
    ROS_INFO("[OH~ I get the name %s from main function.", name.c_str());
}

void myHeaderCallback(const std_msgs::Header::ConstPtr& head, std::string name) {
    double t = head->stamp.toSec();
    ROS_INFO("received header : seq = %d, stamp = %f, frame_id = %s", head->seq, t, head->frame_id.c_str());
    ROS_INFO("[OH~ I get the name %s from main function.", name.c_str());
}

void myArbotixCallback(const arbotix_msgs::Digital::ConstPtr& arbot, std::string& name, std_msgs::Header& head) {
    ROS_INFO("Enter myArbotixCallback function!");
    ROS_INFO("I receive name  = %s, seq = %d, frame_id = %s", name.c_str(), (int)head.seq, head.frame_id.c_str());
    ROS_INFO("And I get the arbotix message, value = %d, direction = %d", arbot->value, arbot->direction);
}

int main(int argc, char** argv) {
    ros::init(argc, argv, "my_listenner");

    ros::NodeHandle n;

    ros::Subscriber my_scrib_color = n.subscribe<std_msgs::ColorRGBA>("pub_color", 1000, myColorCallback);
    
    std::string name = "Yepeichu";
    // ros::Subscriber my_scrib_head = n.subscribe<std_msgs::Header>("pub_header", 1000, 
    //  boost::bind(myHeaderCallback, _1, name));
    ros::Subscriber my_scrib_head = n.subscribe<std_msgs::Header>("pub_header", 1000, 
        boost::bind(myHeaderCallbacktest, name, _1));
    
    std_msgs::Header head;
    head.seq = 10086;
    head.stamp = ros::Time::now();
    head.frame_id = name;
    ros::Subscriber my_scrib_arbot = n.subscribe<arbotix_msgs::Digital>("pub_arbotix", 1000,
        boost::bind(myArbotixCallback, _1, name, head));

    ros::spin();

    return 0;
}