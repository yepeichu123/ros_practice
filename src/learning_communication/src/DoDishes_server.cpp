#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include "learning_communication/DoDishesAction.h"

typedef actionlib::SimpleActionServer<learning_communication::DoDishesAction> Server;

// 收到action的goal后调用该回调函数
void execute(const learning_communication::DoDishesGoalConstPtr& goal, Server* as) {
    ros::Rate r(1);
    learning_communication::DoDishesFeedback feedback;

    ROS_INFO("Dishwasher %d is working.", goal->dishwasher_id);

    // 假设洗盘子的进度，并且按照1hz的频率发布进度feedback
    for (int i = 0; i < 10; ++i) {
        feedback.percent_complete = i * 10;
        as->publishFeedback(feedback);
        r.sleep();
    }

    // 当action完成后，向客户端返回结果
    ROS_INFO("Dishworker %d finish working.", goal->dishwasher_id);
    as->setSucceeded();
}

int main(int argc, char** argv) {
    // 节点初始化
    ros::init(argc, argv, "do_dishes_server");

    // 创建节点
    ros::NodeHandle n;

    // 定义一个服务器
    Server server(n, "do_dishes", boost::bind(&execute, _1, &server), false);

    // 服务器开始运行
    server.start();

    ros::spin();

    return 0;
}   