#include <ros/ros.h>
#include <turtlesim/Spawn.h>
#include <geometry_msgs/Twist.h>
#include <string>

int main(int argc, char** argv) {
    ros::init(argc, argv, "spawn_turtle");

    ros::NodeHandle n;

    // 通过服务调用，生成第二只乌龟
    ros::service::waitForService("/spawn");
    ros::ServiceClient client = n.serviceClient<turtlesim::Spawn>("/spawn");
    turtlesim::Spawn srv;
    srv.request.x = 5.0;
    srv.request.y = 5.0;
    srv.request.theta = 0.0;
    srv.request.name = "/turtle2";
    client.call(srv);

    // 发布第二只乌龟的运动速度
    ros::Publisher pub_vel = n.advertise<geometry_msgs::Twist>("/turtle2/cmd_vel", 1);

    ros::Rate rate(1);
    while( ros::ok() ) {
        geometry_msgs::Twist vel;
        vel.linear.x = 1.0;
        vel.angular.z = 1.0;
        pub_vel.publish(vel);

        ros::spinOnce();
        rate.sleep();
    }

    return 0;
}