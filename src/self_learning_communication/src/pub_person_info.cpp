#include <ros/ros.h>
#include "self_learning_communication/person.h"
#include <string>

using namespace std;

int main(int argc, char** argv) {
    ros::init(argc, argv, "pub_person_info");

    ros::NodeHandle n;

    ros::Publisher pub_person = n.advertise<self_learning_communication::person>("person_info", 100);

    ros::Rate r(1);

    while (ros::ok()) {

        self_learning_communication::person man;
        string name = "Yepeichu";
        man.name.data = name;
        man.age.data = 18;
        man.sex.data = 0;
        pub_person.publish(man);

        r.sleep();
        ros::spinOnce();
    }

    return 0;
}