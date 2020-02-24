#include <ros/ros.h>
#include "self_learning_communication/secret_code.h"
#include <string>

int main(int argc, char** argv) {

    ros::init(argc, argv, "secret_code_client");

    ros::NodeHandle n;

    ros::ServiceClient client = n.serviceClient<self_learning_communication::secret_code>("secret_code");

    self_learning_communication::secret_code code;
    code.request.secret_code_front.data = "Alibaba";

    if (client.call(code)) {
        ROS_INFO("[We get the received secret code : %s", code.response.secret_code_next.data.c_str());
    }
    else {
        ROS_ERROR("Cannot get the reveived code.");
        return 1;
    }
    return 0;
}