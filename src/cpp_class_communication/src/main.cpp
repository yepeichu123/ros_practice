/* 
 * 本代码由叶培楚完成，邮箱为：403806710@qq.com
 * 这部分代码主要是为了用C++的类来调用发布和接收节点
 * 并在类内为回调函数调用了boost::bind来绑定多个变量
 * 但是这个类只声明了两个订阅函数和一个发布函数，因此需要接收订阅类型的消息
*/

#include "example_ros.h"
#include <iostream>

int main(int argc, char** argv) {
    ros::init(argc, argv, "example_ros");

    ros::NodeHandle n;

    ExampleRos es(&n);

    ros::spin();

    return 0;
}