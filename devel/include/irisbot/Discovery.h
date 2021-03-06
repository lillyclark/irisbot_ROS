// Generated by gencpp from file irisbot/Discovery.msg
// DO NOT EDIT!


#ifndef IRISBOT_MESSAGE_DISCOVERY_H
#define IRISBOT_MESSAGE_DISCOVERY_H

#include <ros/service_traits.h>


#include <irisbot/DiscoveryRequest.h>
#include <irisbot/DiscoveryResponse.h>


namespace irisbot
{

struct Discovery
{

typedef DiscoveryRequest Request;
typedef DiscoveryResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Discovery
} // namespace irisbot


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::irisbot::Discovery > {
  static const char* value()
  {
    return "265f19547b1612b7a0fee47f7672b20c";
  }

  static const char* value(const ::irisbot::Discovery&) { return value(); }
};

template<>
struct DataType< ::irisbot::Discovery > {
  static const char* value()
  {
    return "irisbot/Discovery";
  }

  static const char* value(const ::irisbot::Discovery&) { return value(); }
};


// service_traits::MD5Sum< ::irisbot::DiscoveryRequest> should match 
// service_traits::MD5Sum< ::irisbot::Discovery > 
template<>
struct MD5Sum< ::irisbot::DiscoveryRequest>
{
  static const char* value()
  {
    return MD5Sum< ::irisbot::Discovery >::value();
  }
  static const char* value(const ::irisbot::DiscoveryRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::irisbot::DiscoveryRequest> should match 
// service_traits::DataType< ::irisbot::Discovery > 
template<>
struct DataType< ::irisbot::DiscoveryRequest>
{
  static const char* value()
  {
    return DataType< ::irisbot::Discovery >::value();
  }
  static const char* value(const ::irisbot::DiscoveryRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::irisbot::DiscoveryResponse> should match 
// service_traits::MD5Sum< ::irisbot::Discovery > 
template<>
struct MD5Sum< ::irisbot::DiscoveryResponse>
{
  static const char* value()
  {
    return MD5Sum< ::irisbot::Discovery >::value();
  }
  static const char* value(const ::irisbot::DiscoveryResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::irisbot::DiscoveryResponse> should match 
// service_traits::DataType< ::irisbot::Discovery > 
template<>
struct DataType< ::irisbot::DiscoveryResponse>
{
  static const char* value()
  {
    return DataType< ::irisbot::Discovery >::value();
  }
  static const char* value(const ::irisbot::DiscoveryResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // IRISBOT_MESSAGE_DISCOVERY_H
