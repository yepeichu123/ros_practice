# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "self_learning_communication: 9 messages, 1 services")

set(MSG_I_FLAGS "-Iself_learning_communication:/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/msg;-Iself_learning_communication:/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(self_learning_communication_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/msg/person.msg" NAME_WE)
add_custom_target(_self_learning_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "self_learning_communication" "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/msg/person.msg" "std_msgs/String:std_msgs/Int8"
)

get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningAction.msg" NAME_WE)
add_custom_target(_self_learning_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "self_learning_communication" "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningAction.msg" "self_learning_communication/motion_planningGoal:std_msgs/Bool:std_msgs/Header:self_learning_communication/motion_planningActionFeedback:geometry_msgs/Vector3:std_msgs/Float64:self_learning_communication/motion_planningActionResult:self_learning_communication/motion_planningFeedback:self_learning_communication/motion_planningActionGoal:actionlib_msgs/GoalID:self_learning_communication/motion_planningResult:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionGoal.msg" NAME_WE)
add_custom_target(_self_learning_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "self_learning_communication" "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionGoal.msg" "self_learning_communication/motion_planningGoal:actionlib_msgs/GoalID:std_msgs/Header:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningFeedback.msg" NAME_WE)
add_custom_target(_self_learning_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "self_learning_communication" "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningFeedback.msg" "std_msgs/Float64"
)

get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionResult.msg" NAME_WE)
add_custom_target(_self_learning_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "self_learning_communication" "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionResult.msg" "std_msgs/Bool:actionlib_msgs/GoalID:std_msgs/Header:self_learning_communication/motion_planningResult:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/srv/secret_code.srv" NAME_WE)
add_custom_target(_self_learning_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "self_learning_communication" "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/srv/secret_code.srv" "std_msgs/String"
)

get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionFeedback.msg" NAME_WE)
add_custom_target(_self_learning_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "self_learning_communication" "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionFeedback.msg" "std_msgs/Float64:self_learning_communication/motion_planningFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningResult.msg" NAME_WE)
add_custom_target(_self_learning_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "self_learning_communication" "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningResult.msg" "std_msgs/Bool"
)

get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/msg/pose.msg" NAME_WE)
add_custom_target(_self_learning_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "self_learning_communication" "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/msg/pose.msg" "std_msgs/Time:geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:std_msgs/Int32"
)

get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningGoal.msg" NAME_WE)
add_custom_target(_self_learning_communication_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "self_learning_communication" "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningGoal.msg" "geometry_msgs/Vector3"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/msg/person.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int8.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/self_learning_communication
)
_generate_msg_cpp(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningAction.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float64.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionResult.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningFeedback.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/self_learning_communication
)
_generate_msg_cpp(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/self_learning_communication
)
_generate_msg_cpp(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float64.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/self_learning_communication
)
_generate_msg_cpp(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/self_learning_communication
)
_generate_msg_cpp(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float64.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/self_learning_communication
)
_generate_msg_cpp(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/self_learning_communication
)
_generate_msg_cpp(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/msg/pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Time.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/self_learning_communication
)
_generate_msg_cpp(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/self_learning_communication
)

### Generating Services
_generate_srv_cpp(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/srv/secret_code.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/self_learning_communication
)

### Generating Module File
_generate_module_cpp(self_learning_communication
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/self_learning_communication
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(self_learning_communication_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(self_learning_communication_generate_messages self_learning_communication_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/msg/person.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_cpp _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningAction.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_cpp _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionGoal.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_cpp _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningFeedback.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_cpp _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionResult.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_cpp _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/srv/secret_code.srv" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_cpp _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionFeedback.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_cpp _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningResult.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_cpp _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/msg/pose.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_cpp _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningGoal.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_cpp _self_learning_communication_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(self_learning_communication_gencpp)
add_dependencies(self_learning_communication_gencpp self_learning_communication_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS self_learning_communication_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/msg/person.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int8.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/self_learning_communication
)
_generate_msg_eus(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningAction.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float64.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionResult.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningFeedback.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/self_learning_communication
)
_generate_msg_eus(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/self_learning_communication
)
_generate_msg_eus(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float64.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/self_learning_communication
)
_generate_msg_eus(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/self_learning_communication
)
_generate_msg_eus(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float64.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/self_learning_communication
)
_generate_msg_eus(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/self_learning_communication
)
_generate_msg_eus(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/msg/pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Time.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/self_learning_communication
)
_generate_msg_eus(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/self_learning_communication
)

### Generating Services
_generate_srv_eus(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/srv/secret_code.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/self_learning_communication
)

### Generating Module File
_generate_module_eus(self_learning_communication
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/self_learning_communication
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(self_learning_communication_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(self_learning_communication_generate_messages self_learning_communication_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/msg/person.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_eus _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningAction.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_eus _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionGoal.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_eus _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningFeedback.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_eus _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionResult.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_eus _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/srv/secret_code.srv" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_eus _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionFeedback.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_eus _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningResult.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_eus _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/msg/pose.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_eus _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningGoal.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_eus _self_learning_communication_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(self_learning_communication_geneus)
add_dependencies(self_learning_communication_geneus self_learning_communication_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS self_learning_communication_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/msg/person.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int8.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/self_learning_communication
)
_generate_msg_lisp(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningAction.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float64.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionResult.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningFeedback.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/self_learning_communication
)
_generate_msg_lisp(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/self_learning_communication
)
_generate_msg_lisp(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float64.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/self_learning_communication
)
_generate_msg_lisp(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/self_learning_communication
)
_generate_msg_lisp(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float64.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/self_learning_communication
)
_generate_msg_lisp(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/self_learning_communication
)
_generate_msg_lisp(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/msg/pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Time.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/self_learning_communication
)
_generate_msg_lisp(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/self_learning_communication
)

### Generating Services
_generate_srv_lisp(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/srv/secret_code.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/self_learning_communication
)

### Generating Module File
_generate_module_lisp(self_learning_communication
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/self_learning_communication
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(self_learning_communication_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(self_learning_communication_generate_messages self_learning_communication_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/msg/person.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_lisp _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningAction.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_lisp _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionGoal.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_lisp _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningFeedback.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_lisp _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionResult.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_lisp _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/srv/secret_code.srv" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_lisp _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionFeedback.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_lisp _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningResult.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_lisp _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/msg/pose.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_lisp _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningGoal.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_lisp _self_learning_communication_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(self_learning_communication_genlisp)
add_dependencies(self_learning_communication_genlisp self_learning_communication_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS self_learning_communication_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/msg/person.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int8.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/self_learning_communication
)
_generate_msg_nodejs(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningAction.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float64.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionResult.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningFeedback.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/self_learning_communication
)
_generate_msg_nodejs(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/self_learning_communication
)
_generate_msg_nodejs(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float64.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/self_learning_communication
)
_generate_msg_nodejs(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/self_learning_communication
)
_generate_msg_nodejs(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float64.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/self_learning_communication
)
_generate_msg_nodejs(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/self_learning_communication
)
_generate_msg_nodejs(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/msg/pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Time.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/self_learning_communication
)
_generate_msg_nodejs(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/self_learning_communication
)

### Generating Services
_generate_srv_nodejs(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/srv/secret_code.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/self_learning_communication
)

### Generating Module File
_generate_module_nodejs(self_learning_communication
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/self_learning_communication
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(self_learning_communication_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(self_learning_communication_generate_messages self_learning_communication_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/msg/person.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_nodejs _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningAction.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_nodejs _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionGoal.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_nodejs _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningFeedback.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_nodejs _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionResult.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_nodejs _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/srv/secret_code.srv" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_nodejs _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionFeedback.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_nodejs _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningResult.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_nodejs _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/msg/pose.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_nodejs _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningGoal.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_nodejs _self_learning_communication_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(self_learning_communication_gennodejs)
add_dependencies(self_learning_communication_gennodejs self_learning_communication_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS self_learning_communication_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/msg/person.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int8.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/self_learning_communication
)
_generate_msg_py(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningAction.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float64.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionResult.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningFeedback.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/self_learning_communication
)
_generate_msg_py(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/self_learning_communication
)
_generate_msg_py(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float64.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/self_learning_communication
)
_generate_msg_py(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/self_learning_communication
)
_generate_msg_py(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float64.msg;/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/self_learning_communication
)
_generate_msg_py(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/self_learning_communication
)
_generate_msg_py(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/msg/pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Time.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Int32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/self_learning_communication
)
_generate_msg_py(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/self_learning_communication
)

### Generating Services
_generate_srv_py(self_learning_communication
  "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/srv/secret_code.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/self_learning_communication
)

### Generating Module File
_generate_module_py(self_learning_communication
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/self_learning_communication
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(self_learning_communication_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(self_learning_communication_generate_messages self_learning_communication_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/msg/person.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_py _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningAction.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_py _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionGoal.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_py _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningFeedback.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_py _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionResult.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_py _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/srv/secret_code.srv" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_py _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningActionFeedback.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_py _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningResult.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_py _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/msg/pose.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_py _self_learning_communication_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg/motion_planningGoal.msg" NAME_WE)
add_dependencies(self_learning_communication_generate_messages_py _self_learning_communication_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(self_learning_communication_genpy)
add_dependencies(self_learning_communication_genpy self_learning_communication_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS self_learning_communication_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/self_learning_communication)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/self_learning_communication
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(self_learning_communication_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(self_learning_communication_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(self_learning_communication_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/self_learning_communication)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/self_learning_communication
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(self_learning_communication_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(self_learning_communication_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(self_learning_communication_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/self_learning_communication)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/self_learning_communication
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(self_learning_communication_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(self_learning_communication_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(self_learning_communication_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/self_learning_communication)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/self_learning_communication
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(self_learning_communication_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(self_learning_communication_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(self_learning_communication_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/self_learning_communication)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/self_learning_communication\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/self_learning_communication
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(self_learning_communication_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(self_learning_communication_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(self_learning_communication_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
