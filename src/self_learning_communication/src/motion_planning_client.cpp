#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include "self_learning_communication/motion_planningAction.h"
#include "geometry_msgs/Vector3.h"

typedef actionlib::SimpleActionClient<self_learning_communication::motion_planningAction> Client;

void doneCb(const actionlib::SimpleClientGoalState& state,
        const self_learning_communication::motion_planningResultConstPtr& result) {
    ROS_INFO("WOW! We reach the final point!");
    ros::shutdown();
}

void activeCb() {
    ROS_INFO("Ok, now we start to motion planning!");
}

void feedbackCb(const self_learning_communication::motion_planningFeedbackConstPtr& feedback) {
    ROS_INFO("Now we finish %f length.", feedback->percent.data);
}

int main(int argc, char** argv) {
    ros::init(argc, argv, "motion_planning_client");

    Client client("motion_planning", true);

    ROS_INFO("Waiting for server to start!");
    client.waitForServer();
    ROS_INFO("Server is started!");

    self_learning_communication::motion_planningGoal goal;
    geometry_msgs::Vector3 point;
    point.x = 20;
    point.y = 5;
    point.z = 3;
    goal.final = point;

    client.sendGoal(goal, &doneCb, &activeCb, &feedbackCb);
    
    ros::spin();

    return 0;
}