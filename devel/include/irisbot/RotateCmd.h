// Generated by gencpp from file irisbot/RotateCmd.msg
// DO NOT EDIT!


#ifndef IRISBOT_MESSAGE_ROTATECMD_H
#define IRISBOT_MESSAGE_ROTATECMD_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace irisbot
{
template <class ContainerAllocator>
struct RotateCmd_
{
  typedef RotateCmd_<ContainerAllocator> Type;

  RotateCmd_()
    : degrees(0)
    , direction(0)
    , speed(0)  {
    }
  RotateCmd_(const ContainerAllocator& _alloc)
    : degrees(0)
    , direction(0)
    , speed(0)  {
  (void)_alloc;
    }



   typedef int32_t _degrees_type;
  _degrees_type degrees;

   typedef int32_t _direction_type;
  _direction_type direction;

   typedef int32_t _speed_type;
  _speed_type speed;





  typedef boost::shared_ptr< ::irisbot::RotateCmd_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::irisbot::RotateCmd_<ContainerAllocator> const> ConstPtr;

}; // struct RotateCmd_

typedef ::irisbot::RotateCmd_<std::allocator<void> > RotateCmd;

typedef boost::shared_ptr< ::irisbot::RotateCmd > RotateCmdPtr;
typedef boost::shared_ptr< ::irisbot::RotateCmd const> RotateCmdConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::irisbot::RotateCmd_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::irisbot::RotateCmd_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace irisbot

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsMessage': True, 'IsFixedSize': True, 'HasHeader': False}
// {'irisbot': ['/home/lilly/Desktop/ROSws/src/irisbot/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__dir__', '__doc__', '__eq__', '__format__', '__ge__', '__getattribute__', '__gt__', '__hash__', '__init__', '__init_subclass__', '__le__', '__lt__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsMessage< ::irisbot::RotateCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::irisbot::RotateCmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::irisbot::RotateCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::irisbot::RotateCmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::irisbot::RotateCmd_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::irisbot::RotateCmd_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::irisbot::RotateCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e73a3a3f31369df7631a394a7fafc0cc";
  }

  static const char* value(const ::irisbot::RotateCmd_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe73a3a3f31369df7ULL;
  static const uint64_t static_value2 = 0x631a394a7fafc0ccULL;
};

template<class ContainerAllocator>
struct DataType< ::irisbot::RotateCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "irisbot/RotateCmd";
  }

  static const char* value(const ::irisbot::RotateCmd_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::irisbot::RotateCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 degrees\n\
int32 direction\n\
int32 speed\n\
";
  }

  static const char* value(const ::irisbot::RotateCmd_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::irisbot::RotateCmd_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.degrees);
      stream.next(m.direction);
      stream.next(m.speed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RotateCmd_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::irisbot::RotateCmd_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::irisbot::RotateCmd_<ContainerAllocator>& v)
  {
    s << indent << "degrees: ";
    Printer<int32_t>::stream(s, indent + "  ", v.degrees);
    s << indent << "direction: ";
    Printer<int32_t>::stream(s, indent + "  ", v.direction);
    s << indent << "speed: ";
    Printer<int32_t>::stream(s, indent + "  ", v.speed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IRISBOT_MESSAGE_ROTATECMD_H