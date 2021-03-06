// Generated by gencpp from file lab1/LaserScan.msg
// DO NOT EDIT!


#ifndef LAB1_MESSAGE_LASERSCAN_H
#define LAB1_MESSAGE_LASERSCAN_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <std_msgs/Float64.h>
#include <std_msgs/Float64.h>

namespace lab1
{
template <class ContainerAllocator>
struct LaserScan_
{
  typedef LaserScan_<ContainerAllocator> Type;

  LaserScan_()
    : header()
    , range_min()
    , range_max()  {
    }
  LaserScan_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , range_min(_alloc)
    , range_max(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::std_msgs::Float64_<ContainerAllocator>  _range_min_type;
  _range_min_type range_min;

   typedef  ::std_msgs::Float64_<ContainerAllocator>  _range_max_type;
  _range_max_type range_max;





  typedef boost::shared_ptr< ::lab1::LaserScan_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lab1::LaserScan_<ContainerAllocator> const> ConstPtr;

}; // struct LaserScan_

typedef ::lab1::LaserScan_<std::allocator<void> > LaserScan;

typedef boost::shared_ptr< ::lab1::LaserScan > LaserScanPtr;
typedef boost::shared_ptr< ::lab1::LaserScan const> LaserScanConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lab1::LaserScan_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lab1::LaserScan_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::lab1::LaserScan_<ContainerAllocator1> & lhs, const ::lab1::LaserScan_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.range_min == rhs.range_min &&
    lhs.range_max == rhs.range_max;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::lab1::LaserScan_<ContainerAllocator1> & lhs, const ::lab1::LaserScan_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace lab1

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::lab1::LaserScan_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lab1::LaserScan_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lab1::LaserScan_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lab1::LaserScan_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lab1::LaserScan_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lab1::LaserScan_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lab1::LaserScan_<ContainerAllocator> >
{
  static const char* value()
  {
    return "41e2b1d7eaaa6f5d0dacd58459ae11d9";
  }

  static const char* value(const ::lab1::LaserScan_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x41e2b1d7eaaa6f5dULL;
  static const uint64_t static_value2 = 0x0dacd58459ae11d9ULL;
};

template<class ContainerAllocator>
struct DataType< ::lab1::LaserScan_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lab1/LaserScan";
  }

  static const char* value(const ::lab1::LaserScan_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lab1::LaserScan_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"std_msgs/Float64 range_min\n"
"std_msgs/Float64 range_max\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Float64\n"
"float64 data\n"
;
  }

  static const char* value(const ::lab1::LaserScan_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lab1::LaserScan_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.range_min);
      stream.next(m.range_max);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LaserScan_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lab1::LaserScan_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lab1::LaserScan_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "range_min: ";
    s << std::endl;
    Printer< ::std_msgs::Float64_<ContainerAllocator> >::stream(s, indent + "  ", v.range_min);
    s << indent << "range_max: ";
    s << std::endl;
    Printer< ::std_msgs::Float64_<ContainerAllocator> >::stream(s, indent + "  ", v.range_max);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LAB1_MESSAGE_LASERSCAN_H
