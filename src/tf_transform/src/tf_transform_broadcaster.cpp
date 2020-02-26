#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <turtlesim/Pose.h>
#include <string>
using namespace std;

string turtle_name;

void poseCallback(const turtlesim::PoseConstPtr& msg) {
    // 声明tf广播器
    static tf::TransformBroadcaster br;

    // 根据乌龟当前的位姿，设置相对于世界坐标系的坐标变换
    tf::Transform transform;
    transform.setOrigin( tf::Vector3(msg->x, msg->y, 0.0) );
    tf::Quaternion quat;
    quat.setRPY(0, 0, msg->theta);
    transform.setRotation(quat);

    // 发布坐标变换:Twc, 表示当前乌龟坐标系到世界坐标系的变换
    br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "world", turtle_name));
}

int main(int argc, char** argv) {

    ros::init(argc, argv, "transform_broadcaster");
    if (argc != 2) {
        ROS_ERROR("We need turtle name as input.");
        return 1;
    }
    turtle_name = argv[1];

    ros::NodeHandle n;

    ros::Subscriber sub = n.subscribe(turtle_name + "/pose", 10, &poseCallback);

    ros::spin();

    return 0;
}