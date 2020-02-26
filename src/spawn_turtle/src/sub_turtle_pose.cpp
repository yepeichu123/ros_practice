#include <ros/ros.h>
#include <turtlesim/Pose.h>

void poseCallback(const turtlesim::PoseConstPtr& msg) {
    ROS_INFO("Received turtle pose: [x = %f, y = %f, theta = %f]", msg->x, msg->y, msg->theta);
}   

int main(int argc, char** argv) {
    
    ros::init(argc, argv, "sub_turtle_pose");

    ros::NodeHandle n;

    ros::Subscriber sub_pose = n.subscribe<turtlesim::Pose>("/turtle2/pose", 1, poseCallback);

    // 通过设置频率，来延时回调函数调用的时间
    /*
    ros::Rate rate(1);
    while(ros::ok()) {

        ros::spinOnce();

        rate.sleep();
    }
    */ 

    ros::spin();

    return 0;
}