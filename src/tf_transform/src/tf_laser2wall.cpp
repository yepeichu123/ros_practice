#include <ros/ros.h>
#include <tf/transform_listener.h>

int main(int argc, char** argv) {

    ros::init(argc, argv, "laser2wall");

    ros::NodeHandle n;

    tf::TransformListener listener;

    ros::Rate rate(1);
    while(n.ok()) {
        tf::StampedTransform transform;
        try {
            listener.waitForTransform("base_link", "wall", ros::Time(0), ros::Duration(3.0));
            listener.lookupTransform("base_link", "wall", ros::Time(0), transform);
        }
        catch (tf::TransformException& ex) {
            ROS_ERROR("%s", ex.what());
            ros::Duration(1.0).sleep();
            continue;
        }

        ROS_INFO("[Received base_link to wall: [%f, %f, %f].", 
            transform.getOrigin().x(), transform.getOrigin().y(), transform.getOrigin().z());

        ros::spinOnce();
        rate.sleep();
    }
    
    return 0;
}