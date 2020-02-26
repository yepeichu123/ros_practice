#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <geometry_msgs/Twist.h>
#include <turtlesim/Spawn.h>
#include <string>

int main(int argc, char** argv) {
    
    ros::init(argc, argv, "transform_listener");

    ros::NodeHandle n;

    // 通过服务，生成第二只小乌龟
    ros::service::waitForService("spawn");
    ros::ServiceClient add_turtle = n.serviceClient<turtlesim::Spawn>("spawn");
    turtlesim::Spawn srv;
    add_turtle.call(srv);

    // 发布第二只乌龟的速度
    ros::Publisher turtle_vel = n.advertise<geometry_msgs::Twist>("turtle2/cmd_vel", 10);

    // tf监听器
    tf::TransformListener listener;

    ros::Rate rate(10);
    while(n.ok()) {
        tf::StampedTransform transform;
        try {
            // 查找turtle2和turtle1的坐标变换
            // 表示乌龟1在乌龟2坐标系下的坐标
            listener.waitForTransform("/turtle2", "/turtle1", ros::Time(0), ros::Duration(3.0));
            listener.lookupTransform("/turtle2", "/turtle1", ros::Time(0), transform);
        }
        catch (tf::TransformException& ex) {
            ROS_ERROR("%s", ex.what());
            ros::Duration(1.0).sleep();
            continue;
        }

        // 根据两只乌龟之间的相对运动变换，计算turtle2需要运动的角速度和线速度
        // 并发布速度控制指令，使turtle2往turtle1运动
        geometry_msgs::Twist vel_msg;
        vel_msg.angular.z = 4.0 * atan2(transform.getOrigin().y(), transform.getOrigin().x());
        vel_msg.linear.x = 0.5 * sqrt(pow(transform.getOrigin().x(), 2) + pow(transform.getOrigin().y(), 2));
        turtle_vel.publish(vel_msg);

        rate.sleep();
    }

    return 0;
}