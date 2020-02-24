// Generated by gencpp from file learning_communication/DoDishesResult.msg
// DO NOT EDIT!


#ifndef LEARNING_COMMUNICATION_MESSAGE_DODISHESRESULT_H
#define LEARNING_COMMUNICATION_MESSAGE_DODISHESRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace learning_communication
{
template <class ContainerAllocator>
struct DoDishesResult_
{
  typedef DoDishesResult_<ContainerAllocator> Type;

  DoDishesResult_()
    : total_dishes_clearned(0)  {
    }
  DoDishesResult_(const ContainerAllocator& _alloc)
    : total_dishes_clearned(0)  {
  (void)_alloc;
    }



   typedef uint32_t _total_dishes_clearned_type;
  _total_dishes_clearned_type total_dishes_clearned;





  typedef boost::shared_ptr< ::learning_communication::DoDishesResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::learning_communication::DoDishesResult_<ContainerAllocator> const> ConstPtr;

}; // struct DoDishesResult_

typedef ::learning_communication::DoDishesResult_<std::allocator<void> > DoDishesResult;

typedef boost::shared_ptr< ::learning_communication::DoDishesResult > DoDishesResultPtr;
typedef boost::shared_ptr< ::learning_communication::DoDishesResult const> DoDishesResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::learning_communication::DoDishesResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::learning_communication::DoDishesResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace learning_communication

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'learning_communication': ['/home/xiaoc/xiaoc/code/ros_practice/src/learning_communication/msg', '/home/xiaoc/xiaoc/code/ros_practice/devel/share/learning_communication/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::learning_communication::DoDishesResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::learning_communication::DoDishesResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::learning_communication::DoDishesResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::learning_communication::DoDishesResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::learning_communication::DoDishesResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::learning_communication::DoDishesResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::learning_communication::DoDishesResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "766bf393bf3ff4139ce5ad913365c2d2";
  }

  static const char* value(const ::learning_communication::DoDishesResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x766bf393bf3ff413ULL;
  static const uint64_t static_value2 = 0x9ce5ad913365c2d2ULL;
};

template<class ContainerAllocator>
struct DataType< ::learning_communication::DoDishesResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "learning_communication/DoDishesResult";
  }

  static const char* value(const ::learning_communication::DoDishesResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::learning_communication::DoDishesResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# 定义结果信息\n\
uint32 total_dishes_clearned\n\
";
  }

  static const char* value(const ::learning_communication::DoDishesResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::learning_communication::DoDishesResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.total_dishes_clearned);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DoDishesResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::learning_communication::DoDishesResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::learning_communication::DoDishesResult_<ContainerAllocator>& v)
  {
    s << indent << "total_dishes_clearned: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.total_dishes_clearned);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LEARNING_COMMUNICATION_MESSAGE_DODISHESRESULT_H
