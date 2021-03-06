// Generated by gencpp from file self_learning_communication/motion_planningFeedback.msg
// DO NOT EDIT!


#ifndef SELF_LEARNING_COMMUNICATION_MESSAGE_MOTION_PLANNINGFEEDBACK_H
#define SELF_LEARNING_COMMUNICATION_MESSAGE_MOTION_PLANNINGFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Float64.h>

namespace self_learning_communication
{
template <class ContainerAllocator>
struct motion_planningFeedback_
{
  typedef motion_planningFeedback_<ContainerAllocator> Type;

  motion_planningFeedback_()
    : percent()  {
    }
  motion_planningFeedback_(const ContainerAllocator& _alloc)
    : percent(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Float64_<ContainerAllocator>  _percent_type;
  _percent_type percent;





  typedef boost::shared_ptr< ::self_learning_communication::motion_planningFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::self_learning_communication::motion_planningFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct motion_planningFeedback_

typedef ::self_learning_communication::motion_planningFeedback_<std::allocator<void> > motion_planningFeedback;

typedef boost::shared_ptr< ::self_learning_communication::motion_planningFeedback > motion_planningFeedbackPtr;
typedef boost::shared_ptr< ::self_learning_communication::motion_planningFeedback const> motion_planningFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::self_learning_communication::motion_planningFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::self_learning_communication::motion_planningFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace self_learning_communication

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'self_learning_communication': ['/home/xiaoc/xiaoc/code/ros_practice/src/self_learning_communication/msg', '/home/xiaoc/xiaoc/code/ros_practice/devel/share/self_learning_communication/msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::self_learning_communication::motion_planningFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::self_learning_communication::motion_planningFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::self_learning_communication::motion_planningFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::self_learning_communication::motion_planningFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::self_learning_communication::motion_planningFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::self_learning_communication::motion_planningFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::self_learning_communication::motion_planningFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2023e8040621affdd0459e82a77abec5";
  }

  static const char* value(const ::self_learning_communication::motion_planningFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2023e8040621affdULL;
  static const uint64_t static_value2 = 0xd0459e82a77abec5ULL;
};

template<class ContainerAllocator>
struct DataType< ::self_learning_communication::motion_planningFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "self_learning_communication/motion_planningFeedback";
  }

  static const char* value(const ::self_learning_communication::motion_planningFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::self_learning_communication::motion_planningFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# 不断反馈进度\n\
std_msgs/Float64 percent\n\
\n\
\n\
================================================================================\n\
MSG: std_msgs/Float64\n\
float64 data\n\
";
  }

  static const char* value(const ::self_learning_communication::motion_planningFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::self_learning_communication::motion_planningFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.percent);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct motion_planningFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::self_learning_communication::motion_planningFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::self_learning_communication::motion_planningFeedback_<ContainerAllocator>& v)
  {
    s << indent << "percent: ";
    s << std::endl;
    Printer< ::std_msgs::Float64_<ContainerAllocator> >::stream(s, indent + "  ", v.percent);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SELF_LEARNING_COMMUNICATION_MESSAGE_MOTION_PLANNINGFEEDBACK_H
