/* Software License Agreement (BSD License)
 *
 * Copyright (c) 2011, Willow Garage, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above
 *    copyright notice, this list of conditions and the following
 *    disclaimer in the documentation and/or other materials provided
 *    with the distribution.
 *  * Neither the name of Willow Garage, Inc. nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * Auto-generated by gensrv_cpp from file /home/powerball/rpi_robotics_work/schunk_workspace/src/schunk_api/srv/InitHaltAPI.srv
 *
 */


#ifndef SCHUNK_API_MESSAGE_INITHALTAPI_H
#define SCHUNK_API_MESSAGE_INITHALTAPI_H

#include <ros/service_traits.h>


#include <schunk_api/InitHaltAPIRequest.h>
#include <schunk_api/InitHaltAPIResponse.h>


namespace schunk_api
{

struct InitHaltAPI
{

typedef InitHaltAPIRequest Request;
typedef InitHaltAPIResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct InitHaltAPI
} // namespace schunk_api


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::schunk_api::InitHaltAPI > {
  static const char* value()
  {
    return "ebaac739ca0ec34f8c8978d1e8915ec0";
  }

  static const char* value(const ::schunk_api::InitHaltAPI&) { return value(); }
};

template<>
struct DataType< ::schunk_api::InitHaltAPI > {
  static const char* value()
  {
    return "schunk_api/InitHaltAPI";
  }

  static const char* value(const ::schunk_api::InitHaltAPI&) { return value(); }
};


// service_traits::MD5Sum< ::schunk_api::InitHaltAPIRequest> should match 
// service_traits::MD5Sum< ::schunk_api::InitHaltAPI > 
template<>
struct MD5Sum< ::schunk_api::InitHaltAPIRequest>
{
  static const char* value()
  {
    return MD5Sum< ::schunk_api::InitHaltAPI >::value();
  }
  static const char* value(const ::schunk_api::InitHaltAPIRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::schunk_api::InitHaltAPIRequest> should match 
// service_traits::DataType< ::schunk_api::InitHaltAPI > 
template<>
struct DataType< ::schunk_api::InitHaltAPIRequest>
{
  static const char* value()
  {
    return DataType< ::schunk_api::InitHaltAPI >::value();
  }
  static const char* value(const ::schunk_api::InitHaltAPIRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::schunk_api::InitHaltAPIResponse> should match 
// service_traits::MD5Sum< ::schunk_api::InitHaltAPI > 
template<>
struct MD5Sum< ::schunk_api::InitHaltAPIResponse>
{
  static const char* value()
  {
    return MD5Sum< ::schunk_api::InitHaltAPI >::value();
  }
  static const char* value(const ::schunk_api::InitHaltAPIResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::schunk_api::InitHaltAPIResponse> should match 
// service_traits::DataType< ::schunk_api::InitHaltAPI > 
template<>
struct DataType< ::schunk_api::InitHaltAPIResponse>
{
  static const char* value()
  {
    return DataType< ::schunk_api::InitHaltAPI >::value();
  }
  static const char* value(const ::schunk_api::InitHaltAPIResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SCHUNK_API_MESSAGE_INITHALTAPI_H
