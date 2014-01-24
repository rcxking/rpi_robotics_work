/*
 * canopenbase.cpp
 *
 *  Created on: 13.02.2012
 *      Author: osswald2
 */
#if defined( OSNAME_LINUX )
# include <libpcan.h>

#elif defined( OSNAME_CYGWIN )
// on cygwin Pcan_usb.h includes windef.h which defines macros named max/min which the compiler confuses with max/min templates
// but defining NOMINMAX prevents those evil macros from being defined
# define NOMINMAX
# include <windows.h>
# include <Pcan_usb.h>
#endif

NMT_ID = 0x000             #    0 ->    0
SYNC_ID = 0x080             #  128 ->  128
EMERGENCY_ID = 0x080        #  128 ->  129 bis 255
TIMESTAMP_ID = 0x100        #  256 ->  256
PDO1TX_ID = 0x180         #  384 ->  385 bis 511
PDO1RX_ID = 0x200         #  512 ->  513 bis 639
PDO2TX_ID = 0x280         #  640 ->  641 bis 767
PDO2RX_ID = 0x300         #  768 ->  769 bis 895
PDO3TX_ID = 0x380         #  896 ->  897 bis 1023
PDO3RX_ID = 0x400         # 1024 -> 1025 bis 1151
PDO4TX_ID = 0x480         # 1152 -> 1153 bis 1279
PDO4RX_ID = 0x500         # 1280 -> 1281 bis 1407
PDOxRX_ID = { 1: PDO1RX_ID, 2: PDO2RX_ID, 3: PDO3RX_ID, 4: PDO4RX_ID }
PDOxTX_ID = { 1: PDO1TX_ID, 2: PDO2TX_ID, 3: PDO3TX_ID, 4: PDO4TX_ID }
SDOTX_ID = 0x580             # 1408 -> 1409 bis 1535
SDORX_ID = 0x600             # 1536 -> 1537 bis 1663
NODEGUARD_ID = 0x700        # 1792 -> 1793 bis 1919
LSS_M_ID = 0x7E5
LSS_S_ID = 0x7E4
