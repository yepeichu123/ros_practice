#include "ros/ros.h"
#include "learning_communication/AddTwoInts.h"

// service回调函数，输入参数req，输出参数res
bool add(learning_communication::AddTwoInts::Request &req,
         learning_communication::AddTwoInts::Response &res) {
    // 将输入参数的请求数据相加，结果放到应答数据中
    res.sum = req.a + req.b;
    ROS_INFO("request: x = %1d, y = %1d", (int)req.a, (int)req.b);
    ROS_INFO("sending back response: [%1d]", (int)res.sum);
    
    return true;
}

int main(int argc, char** argv) {
    // ros节点初始化
    ros::init(argc, argv, "add_two_ints_server");

    // 创建节点句柄
    ros::NodeHandle n;

    // 创建一个名为add_two_ints的server，注册回调函数add()
    ros::ServiceServer service =n.advertiseService("add_two_ints", add);

    // 循环等待回调函数
    ROS_INFO("Ready to add two ints.");
    ros::spin();

    return 0;
}