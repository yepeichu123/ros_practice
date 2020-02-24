/*
 * 本代码由叶培楚完成，邮箱：403806710@qq.com
 * 完成消息节点的声明和消息的发布
 * 消息类型可以使用std_msgs定义的系统类型：通过rosmsg package std_msgs查询该软件包中所有类型
 * 再通过rosmsg info 查看具体信息，比如rosmsg info std_msgs/String
 * 通过查询对应类型后，再调用该类型时，需要包含该类型的头文件
 * 每个消息类型都会生成对应的头文件，哪怕自己定义的类型也一样。
*/

#include <ros/ros.h>
#include "std_msgs/ColorRGBA.h"
#include "std_msgs/Header.h"
#include "arbotix_msgs/Digital.h"

int main(int argc, char** argv) {
    // 节点初始化
    ros::init(argc, argv, "my_talker");

    // 声明句柄
    ros::NodeHandle n;

    // 声明发布者
    ros::Publisher my_pub = n.advertise<std_msgs::ColorRGBA>("pub_color", 1000);
    ros::Publisher my_pub_head = n.advertise<std_msgs::Header>("pub_header", 1000);
    ros::Publisher my_pub_arbotix = n.advertise<arbotix_msgs::Digital>("pub_arbotix", 1000);

    // 发布频率
    ros::Rate r(1);

    int count = 1;
    while (ros::ok()) {
        // 构建一个发布类型变量
        std_msgs::ColorRGBA value;
        value.r = 255;
        value.g = 125;
        value.b = 0;
        value.a = 0.5;
        // ------
        std_msgs::Header head;
        head.seq = 1000 + count++;
        head.stamp = ros::Time::now();
        head.frame_id = "interesting";
        // ------
        arbotix_msgs::Digital arbot;
        arbot.header = head;
        arbot.value = 125;
        arbot.direction = 0;

        // 发布
        ROS_INFO("color is : r = %f, g = %f, b = %f, a = %f", value.r, value.g, value.b, value.a);
        my_pub.publish(value);

        double t = head.stamp.toSec();
        ROS_INFO("header is : seq = %d, stamp = %f, frame_id = %s", head.seq, t, head.frame_id.c_str());
        my_pub_head.publish(head);

        ROS_INFO("arbotix_msgs has value = %d, direction = %d", (int)arbot.value, (int)arbot.direction);
        my_pub_arbotix.publish(arbot);
        
        // 循环发布
        ros::spinOnce();

        // 等待
        r.sleep();
    }

    return 0;
}