#include <ros/ros.h>
#include <tf/transform_broadcaster.h>

int main(int argc, char** argv) {

    ros::init(argc, argv, "laser2base");

    ros::NodeHandle n;

    tf::TransformBroadcaster br_laser2base;
    tf::TransformBroadcaster br_wall2laser;

    ros::Rate rate(10);
    while(ros::ok()) {
        tf::Transform transform_1;
        // 发布base_laser到base_link的姿态变换
        transform_1.setOrigin(tf::Vector3(0.1, 0.0, 0.2));
        tf::Quaternion quat_1;
        quat_1.setRPY(0, 0, 0);
        transform_1.setRotation(quat_1);
        br_laser2base.sendTransform(tf::StampedTransform(transform_1, ros::Time::now(), "base_link", "base_laser"));

        tf::Transform transform_2;
        // 发布wall到base_laser的姿态变换
        transform_2.setOrigin(tf::Vector3(0.3, 0.0, 0.0));
        tf::Quaternion quat_2;
        quat_2.setRPY(0, 0, 0);
        transform_2.setRotation(quat_2);
        br_wall2laser.sendTransform(tf::StampedTransform(transform_2, ros::Time::now(), "base_laser", "wall"));

        ros::spinOnce();
        rate.sleep();
    }

    return 0;
}