#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include "self_learning_communication/motion_planningAction.h"

typedef actionlib::SimpleActionServer<self_learning_communication::motion_planningAction> Server;

void execute(const self_learning_communication::motion_planningGoalConstPtr& goal, Server* as) {
    ROS_INFO("Aimed point: [%f, %f, %f]", goal->final.x, goal->final.y, goal->final.z);

    ros::Rate r(1);
    self_learning_communication::motion_planningFeedback feedback;
    int nstep = (int)(goal->final.x + goal->final.y + goal->final.z);
    for (int i = 1; i <= nstep; ++i) {
        double percent = double(i) / nstep;
        feedback.percent.data = percent;
        as->publishFeedback(feedback);
        r.sleep();
    }

    ROS_INFO("Final point is reaches.");
    as->setSucceeded();
}

int main(int argc, char** argv) {

    ros::init(argc, argv, "motion_planning_server");

    ros::NodeHandle n;

    Server server(n, "motion_planning", boost::bind(&execute, _1, &server), false);

    server.start();

    ros::spin();

    return 0;
}
