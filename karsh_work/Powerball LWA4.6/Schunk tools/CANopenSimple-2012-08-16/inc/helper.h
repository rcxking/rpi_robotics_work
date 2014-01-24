/*
 * helper.h
 *
 * Some helper macros, functions, classes.
 *
 *  Created on: 13.02.2012
 *      Author: osswald2
 */

#ifndef HELPER_H_
#define HELPER_H_

#include <iostream>
#include <iomanip>
#include <string>
#include <time.h>
#include <math.h>

/*!
 Just a macro for the very lazy programmer to convert an enum or a DEFINE macro
 into a case command that returns the name of the macro as string.

 Usage:
 \code
 char const* eSomeEnumType_ToString( eSomeEnumType rc )
 {
   switch (rc)
   {
   DEFINE_TO_CASECOMMAND( AN_ENUM );
   DEFINE_TO_CASECOMMAND( AN_OTHER_ENUM );
   ...
   default:               return "unknown return code";
   }
 }
 \endcode

 \remark You must use the enum or macro directly (not a variable with that value) since CPP-stringification is used.

 See also #DEFINE_TO_CASECOMMAND_MSG
*/
#define DEFINE_TO_CASECOMMAND( _c ) case _c: return (#_c)

//======================================================================



//! dummy class for (debug) stream output of bytes as list of hex values
class cHexByteString
{
    char const* bytes;
    int         len;
public:
    //! ctor: create a cHexByteString with \a _len bytes at \a _bytes
    cHexByteString( char const* _bytes, int _len ) :
        bytes(_bytes),
        len(_len)
        {};

    friend std::ostream &operator<<(std::ostream &stream, cHexByteString const &s);
};

//! output the bytes in \a s to \a stream as a list of space separated hex bytes (without 0x prefix)
inline std::ostream &operator<<(std::ostream &stream, cHexByteString const &s)
{
    //-----
    // print all bytes as hex bytes:
    bool is_all_printable_ascii = true;
    for ( int i = 0; i < s.len; i++ )
    {
        stream << std::hex << std::setw(2) << std::setfill('0') << int( ((unsigned char const*)s.bytes)[i] ) << " ";
        if ( s.bytes[i] < 0x20 || ((unsigned char) s.bytes[i]) >= 0x80 )
            is_all_printable_ascii = false;
    }
    //-----

    //-----
    // if the bytes were all printable ascii codes then print them as string as well:
    if ( is_all_printable_ascii )
        stream << "= \"" << std::string( s.bytes, s.len ) << "\"";
    //-----

    return stream << std::dec;
};
//======================================================================

inline void SleepSec( double t )
{
    timespec sleeptime;
    sleeptime.tv_sec  = (time_t) floor( t );
    sleeptime.tv_nsec = (long)   ((t - floor( t )) * 1E9);

    //std::cerr << "Sleeping for " << sleeptime.tv_sec << "s and " << sleeptime.tv_nsec << "ns\n";

    nanosleep( &sleeptime, NULL );
}
//-----------------------------------------------------------------

#endif /* HELPER_H_ */
