enum canmat_pdo_transmission_type {
	 CANMAT_PDO_TRANSMISSION_TYPE_SYNCHRONOUS = 0x00, /* synchronous */
	 CANMAT_PDO_TRANSMISSION_TYPE_EVENT_DRIVEN = 0xFF, /* event_driven */
};
enum canmat_object_type {
	 CANMAT_OBJECT_TYPE_NULL = 0, /* no data fields */
	 CANMAT_OBJECT_TYPE_DOMAIN = 2, /* large variable amount of data */
	 CANMAT_OBJECT_TYPE_DEFTYPE = 5, /* A type definition */
	 CANMAT_OBJECT_TYPE_DEFSTRUCT = 6, /* A struct definition */
	 CANMAT_OBJECT_TYPE_VAR = 7, /* A single value */
	 CANMAT_OBJECT_TYPE_ARRAY = 8, /* An array */
	 CANMAT_OBJECT_TYPE_RECORD = 9, /* A record type */
};
enum canmat_error_reg_mask {
	 CANMAT_ERROR_REG_MASK_ERROR = 1 << 0, /* Generic Error */
	 CANMAT_ERROR_REG_MASK_CURRENT = 1 << 1, /* Current Error */
	 CANMAT_ERROR_REG_MASK_VOLTAGE = 1 << 2, /* Voltage Error */
	 CANMAT_ERROR_REG_MASK_TEMP = 1 << 3, /* Temperature Error */
	 CANMAT_ERROR_REG_MASK_COMM = 1 << 4, /* Communication error (overrun, error state) */
	 CANMAT_ERROR_REG_MASK_DEV_PROF = 1 << 5, /* Device profile specific */
	 CANMAT_ERROR_REG_MASK_MFR = 1 << 7, /* manufacturer-specific */
};
enum canmat_data_type {
	 CANMAT_DATA_TYPE_BOOLEAN = 0x0001, /* boolean */
	 CANMAT_DATA_TYPE_INTEGER8 = 0x0002, /* integer8 */
	 CANMAT_DATA_TYPE_INTEGER16 = 0x0003, /* integer16 */
	 CANMAT_DATA_TYPE_INTEGER32 = 0x0004, /* integer32 */
	 CANMAT_DATA_TYPE_UNSIGNED8 = 0x0005, /* unsigned8 */
	 CANMAT_DATA_TYPE_UNSIGNED16 = 0x0006, /* unsigned16 */
	 CANMAT_DATA_TYPE_UNSIGNED32 = 0x0007, /* unsigned32 */
	 CANMAT_DATA_TYPE_REAL32 = 0x0008, /* real32 */
	 CANMAT_DATA_TYPE_VISIBLE_STRING = 0x0009, /* visible_string */
	 CANMAT_DATA_TYPE_OCTET_STRING = 0x000A, /* octet_string */
	 CANMAT_DATA_TYPE_UNICODE_STRING = 0x000B, /* unicode_string */
	 CANMAT_DATA_TYPE_TIME_OF_DAY = 0x000C, /* time_of_day */
	 CANMAT_DATA_TYPE_TIME_DIFFERENCE = 0x000D, /* time_difference */
	 CANMAT_DATA_TYPE_DOMAIN = 0x000F, /* domain */
	 CANMAT_DATA_TYPE_INT24 = 0x0010, /* int24 */
	 CANMAT_DATA_TYPE_REAL64 = 0x0011, /* real64 */
	 CANMAT_DATA_TYPE_INTEGER40 = 0x0012, /* integer40 */
	 CANMAT_DATA_TYPE_INTEGER48 = 0x0013, /* integer48 */
	 CANMAT_DATA_TYPE_INTEGER56 = 0x0014, /* integer56 */
	 CANMAT_DATA_TYPE_INTEGER64 = 0x0015, /* integer64 */
	 CANMAT_DATA_TYPE_UINT24 = 0x0016, /* uint24 */
	 CANMAT_DATA_TYPE_UNSIGNED40 = 0x0018, /* unsigned40 */
	 CANMAT_DATA_TYPE_UNSIGNED48 = 0x0019, /* unsigned48 */
	 CANMAT_DATA_TYPE_UNSIGNED56 = 0x001A, /* unsigned56 */
	 CANMAT_DATA_TYPE_UNSIGNED64 = 0x001B, /* unsigned64 */
	 CANMAT_DATA_TYPE_PDO_COM = 0x0020, /* pdo_com */
	 CANMAT_DATA_TYPE_PDO_MAP = 0x0021, /* pdo_map */
	 CANMAT_DATA_TYPE_SDO_PARM = 0x0022, /* sdo_parm */
	 CANMAT_DATA_TYPE_IDENTITY = 0x0023, /* identity */
	 CANMAT_DATA_TYPE_VOID = 0xFFFF + 1, /* void */
	 CANMAT_DATA_TYPE_UNKNOWN = 0xFFFF + 2, /* unknown */
};
enum canmat_func_code {
	 CANMAT_FUNC_CODE_NMT = 0x000, /* nmt */
	 CANMAT_FUNC_CODE_SYNC_EMCY = 0x080, /* sync_emcy */
	 CANMAT_FUNC_CODE_TIME = 0x100, /* time */
	 CANMAT_FUNC_CODE_PDO1_TX = 0x180, /* pdo1_tx */
	 CANMAT_FUNC_CODE_PDO1_RX = 0x200, /* pdo1_rx */
	 CANMAT_FUNC_CODE_PDO2_TX = 0x280, /* pdo2_tx */
	 CANMAT_FUNC_CODE_PDO2_RX = 0x300, /* pdo2_rx */
	 CANMAT_FUNC_CODE_PDO3_TX = 0x380, /* pdo3_tx */
	 CANMAT_FUNC_CODE_PDO3_RX = 0x400, /* pdo3_rx */
	 CANMAT_FUNC_CODE_PDO4_TX = 0x480, /* pdo4_tx */
	 CANMAT_FUNC_CODE_PDO4_RX = 0x500, /* pdo4_rx */
	 CANMAT_FUNC_CODE_SDO_TX = 0x580, /* sdo_tx */
	 CANMAT_FUNC_CODE_SDO_RX = 0x600, /* sdo_rx */
	 CANMAT_FUNC_CODE_NMT_ERR = 0x700, /* nmt_err */
};
