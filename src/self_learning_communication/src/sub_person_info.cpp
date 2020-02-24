#include <ros/ros.h>
#include "self_learning_communication/person.h"

void PersonCallback(const self_learning_communication::person::ConstPtr& person) {
    ROS_INFO("[We receive message: name = %s, age = %d, sex = %d", 
        person->name.data.c_str(), (int)person->age.data, (int)person->sex.data);
}

int main(int argc, char** argv) {

    ros::init(argc, argv, "sub_person_info");

    ros::NodeHandle n;

    ros::Subscriber sub_person = n.subscribe<self_learning_communication::person>("person_info", 100, PersonCallback);

    ros::spin();

    return 0;
}