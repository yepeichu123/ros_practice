#include <ros/ros.h>
#include "self_learning_communication/secret_code.h"

bool SecretCode(self_learning_communication::secret_code::Request& req,
                self_learning_communication::secret_code::Response& res) {
    ROS_INFO("[Request secret_code is %s]", req.secret_code_front.data.c_str());
    res.secret_code_next.data = "Zhimakaimen";

    return true;
}

int main(int argc, char** argv) {
    ros::init(argc, argv, "secret_code_service");

    ros::NodeHandle n;

    ros::ServiceServer server = n.advertiseService("secret_code", SecretCode);

    ROS_INFO("[secret_code start!]");
    ros::spin();

    return 0;
}