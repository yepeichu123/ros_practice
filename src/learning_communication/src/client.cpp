#include "ros/ros.h"
#include "learning_communication/AddTwoInts.h"
#include <cstdlib>

int main(int argc, char** argv) {
    // ros节点初始化
    ros::init(argc, argv, "add_two_ints_client");

    // 从终端命令行读取两个数字
    if (argc != 3) {
        ROS_INFO("USAGE: add_two_ints_client X Y");
        return 1;
    }

    // 创建ros句柄
    ros::NodeHandle n;

    // 创建一个client, 请求add_two_ints_server
    // service消息类型是learning_communication::AddTwoInts
    ros::ServiceClient client = n.serviceClient<learning_communication::AddTwoInts>("add_two_ints");

    // 创建learning_communication::AddTwoInts类型的servie数据
    learning_communication::AddTwoInts srv;
    srv.request.a = atoll(argv[1]);
    srv.request.b = atoll(argv[2]);

    // 发布service的请求，等待加法运算的应答结果
    if (client.call(srv)) {
        ROS_INFO("Sum: %1d", (int)srv.response.sum);
    }
    else {
        ROS_ERROR("Failed to call service add_two_ints");
        return 1;
    }

    return 0;
}
