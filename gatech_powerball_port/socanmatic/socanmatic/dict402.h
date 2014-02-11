extern const canmat_dict_t canmat_dict402;
#define CANMAT_402_OBJ_DEVICE_TYPE (canmat_dict402.obj + 0)
static inline canmat_status_t canmat_402_ul_device_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_DEVICE_TYPE, val, err); }
static inline canmat_status_t canmat_402_dl_device_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_DEVICE_TYPE, val, err); }
#define CANMAT_402_OBJ_ERROR_REGISTER (canmat_dict402.obj + 1)
static inline canmat_status_t canmat_402_ul_error_register (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_ERROR_REGISTER, val, err); }
static inline canmat_status_t canmat_402_dl_error_register (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_ERROR_REGISTER, val, err); }
#define CANMAT_402_OBJ_MANUFACTURER_STATUS_REGISTER (canmat_dict402.obj + 2)
static inline canmat_status_t canmat_402_ul_manufacturer_status_register (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_MANUFACTURER_STATUS_REGISTER, val, err); }
static inline canmat_status_t canmat_402_dl_manufacturer_status_register (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_MANUFACTURER_STATUS_REGISTER, val, err); }
#define CANMAT_402_OBJ_PRE_DEFINED_ERROR_FIELD (canmat_dict402.obj + 3)
#define CANMAT_402_OBJ_COB_ID_SYNC (canmat_dict402.obj + 4)
#define CANMAT_402_OBJ_COMMUNICATION_CYCLE_PERIOD (canmat_dict402.obj + 5)
static inline canmat_status_t canmat_402_ul_communication_cycle_period (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_COMMUNICATION_CYCLE_PERIOD, val, err); }
static inline canmat_status_t canmat_402_dl_communication_cycle_period (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_COMMUNICATION_CYCLE_PERIOD, val, err); }
#define CANMAT_402_OBJ_SYNCHRONOUS_WINDOW_LENGTH (canmat_dict402.obj + 6)
static inline canmat_status_t canmat_402_ul_synchronous_window_length (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_SYNCHRONOUS_WINDOW_LENGTH, val, err); }
static inline canmat_status_t canmat_402_dl_synchronous_window_length (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_SYNCHRONOUS_WINDOW_LENGTH, val, err); }
#define CANMAT_402_OBJ_MANUFACTURER_DEVICE_NAME (canmat_dict402.obj + 7)
#define CANMAT_402_OBJ_MANUFACTURER_SOFTWARE_VERSION (canmat_dict402.obj + 8)
#define CANMAT_402_OBJ_GUARD_TIME (canmat_dict402.obj + 9)
static inline canmat_status_t canmat_402_ul_guard_time (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_GUARD_TIME, val, err); }
static inline canmat_status_t canmat_402_dl_guard_time (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_GUARD_TIME, val, err); }
#define CANMAT_402_OBJ_LIFE_TIME_FAVTOR (canmat_dict402.obj + 10)
static inline canmat_status_t canmat_402_ul_life_time_favtor (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_LIFE_TIME_FAVTOR, val, err); }
static inline canmat_status_t canmat_402_dl_life_time_favtor (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_LIFE_TIME_FAVTOR, val, err); }
#define CANMAT_402_OBJ_STORE_PARAMETERS (canmat_dict402.obj + 11)
#define CANMAT_402_OBJ_STORE_PARAMETERS_SUB_SAVE_ALL_PARAMETERS (canmat_dict402.obj + 12)
static inline canmat_status_t canmat_402_ul_store_parameters_sub_save_all_parameters (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_STORE_PARAMETERS_SUB_SAVE_ALL_PARAMETERS, val, err); }
static inline canmat_status_t canmat_402_dl_store_parameters_sub_save_all_parameters (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_STORE_PARAMETERS_SUB_SAVE_ALL_PARAMETERS, val, err); }
#define CANMAT_402_OBJ_STORE_PARAMETERS_SUB_SAVE_COMMUNICATION_PARAMETERS (canmat_dict402.obj + 13)
static inline canmat_status_t canmat_402_ul_store_parameters_sub_save_communication_parameters (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_STORE_PARAMETERS_SUB_SAVE_COMMUNICATION_PARAMETERS, val, err); }
static inline canmat_status_t canmat_402_dl_store_parameters_sub_save_communication_parameters (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_STORE_PARAMETERS_SUB_SAVE_COMMUNICATION_PARAMETERS, val, err); }
#define CANMAT_402_OBJ_STORE_PARAMETERS_SUB_SAVE_APPLICATION_PARAMETERS (canmat_dict402.obj + 14)
static inline canmat_status_t canmat_402_ul_store_parameters_sub_save_application_parameters (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_STORE_PARAMETERS_SUB_SAVE_APPLICATION_PARAMETERS, val, err); }
static inline canmat_status_t canmat_402_dl_store_parameters_sub_save_application_parameters (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_STORE_PARAMETERS_SUB_SAVE_APPLICATION_PARAMETERS, val, err); }
#define CANMAT_402_OBJ_RESTORE_DEFAULT_PARAMETERS (canmat_dict402.obj + 15)
#define CANMAT_402_OBJ_RESTORE_DEFAULT_PARAMETERS_SUB_RESTORE_ALL_DEFAULT_PARAMETERS (canmat_dict402.obj + 16)
static inline canmat_status_t canmat_402_ul_restore_default_parameters_sub_restore_all_default_parameters (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RESTORE_DEFAULT_PARAMETERS_SUB_RESTORE_ALL_DEFAULT_PARAMETERS, val, err); }
static inline canmat_status_t canmat_402_dl_restore_default_parameters_sub_restore_all_default_parameters (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RESTORE_DEFAULT_PARAMETERS_SUB_RESTORE_ALL_DEFAULT_PARAMETERS, val, err); }
#define CANMAT_402_OBJ_RESTORE_DEFAULT_PARAMETERS_SUB_RESTORE_COMMUNICATION_DEFAULT_PARAMETERS (canmat_dict402.obj + 17)
static inline canmat_status_t canmat_402_ul_restore_default_parameters_sub_restore_communication_default_parameters (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RESTORE_DEFAULT_PARAMETERS_SUB_RESTORE_COMMUNICATION_DEFAULT_PARAMETERS, val, err); }
static inline canmat_status_t canmat_402_dl_restore_default_parameters_sub_restore_communication_default_parameters (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RESTORE_DEFAULT_PARAMETERS_SUB_RESTORE_COMMUNICATION_DEFAULT_PARAMETERS, val, err); }
#define CANMAT_402_OBJ_RESTORE_DEFAULT_PARAMETERS_SUB_RESTORE_APPLICATION_DEFAULT_PARAMETERS (canmat_dict402.obj + 18)
static inline canmat_status_t canmat_402_ul_restore_default_parameters_sub_restore_application_default_parameters (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RESTORE_DEFAULT_PARAMETERS_SUB_RESTORE_APPLICATION_DEFAULT_PARAMETERS, val, err); }
static inline canmat_status_t canmat_402_dl_restore_default_parameters_sub_restore_application_default_parameters (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RESTORE_DEFAULT_PARAMETERS_SUB_RESTORE_APPLICATION_DEFAULT_PARAMETERS, val, err); }
#define CANMAT_402_OBJ_COB_ID_TIME_STAMP_MESSAGE (canmat_dict402.obj + 19)
static inline canmat_status_t canmat_402_ul_cob_id_time_stamp_message (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_COB_ID_TIME_STAMP_MESSAGE, val, err); }
static inline canmat_status_t canmat_402_dl_cob_id_time_stamp_message (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_COB_ID_TIME_STAMP_MESSAGE, val, err); }
#define CANMAT_402_OBJ_HIGH_RESOLUTION_TIME_STAMP (canmat_dict402.obj + 20)
static inline canmat_status_t canmat_402_ul_high_resolution_time_stamp (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_HIGH_RESOLUTION_TIME_STAMP, val, err); }
static inline canmat_status_t canmat_402_dl_high_resolution_time_stamp (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_HIGH_RESOLUTION_TIME_STAMP, val, err); }
#define CANMAT_402_OBJ_COB_ID_EMERGENCY_MESSAGE (canmat_dict402.obj + 21)
static inline canmat_status_t canmat_402_ul_cob_id_emergency_message (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_COB_ID_EMERGENCY_MESSAGE, val, err); }
static inline canmat_status_t canmat_402_dl_cob_id_emergency_message (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_COB_ID_EMERGENCY_MESSAGE, val, err); }
#define CANMAT_402_OBJ_INHIBIT_TIME_EMCY (canmat_dict402.obj + 22)
static inline canmat_status_t canmat_402_ul_inhibit_time_emcy (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_INHIBIT_TIME_EMCY, val, err); }
static inline canmat_status_t canmat_402_dl_inhibit_time_emcy (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_INHIBIT_TIME_EMCY, val, err); }
#define CANMAT_402_OBJ_CONSUMER_HEARTBEAT_TIME (canmat_dict402.obj + 23)
#define CANMAT_402_OBJ_PRODUCER_HEARTBEAT_TIME (canmat_dict402.obj + 24)
#define CANMAT_402_OBJ_IDENTITY_OBJECT (canmat_dict402.obj + 25)
#define CANMAT_402_OBJ_IDENTITY_OBJECT_SUB_VENDOR_ID (canmat_dict402.obj + 26)
static inline canmat_status_t canmat_402_ul_identity_object_sub_vendor_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_IDENTITY_OBJECT_SUB_VENDOR_ID, val, err); }
static inline canmat_status_t canmat_402_dl_identity_object_sub_vendor_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_IDENTITY_OBJECT_SUB_VENDOR_ID, val, err); }
#define CANMAT_402_OBJ_IDENTITY_OBJECT_SUB_PRODUCT_CODE (canmat_dict402.obj + 27)
static inline canmat_status_t canmat_402_ul_identity_object_sub_product_code (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_IDENTITY_OBJECT_SUB_PRODUCT_CODE, val, err); }
static inline canmat_status_t canmat_402_dl_identity_object_sub_product_code (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_IDENTITY_OBJECT_SUB_PRODUCT_CODE, val, err); }
#define CANMAT_402_OBJ_IDENTITY_OBJECT_SUB_REVISION_NUMBER (canmat_dict402.obj + 28)
static inline canmat_status_t canmat_402_ul_identity_object_sub_revision_number (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_IDENTITY_OBJECT_SUB_REVISION_NUMBER, val, err); }
static inline canmat_status_t canmat_402_dl_identity_object_sub_revision_number (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_IDENTITY_OBJECT_SUB_REVISION_NUMBER, val, err); }
#define CANMAT_402_OBJ_IDENTITY_OBJECT_SUB_SERIAL_NUMBER (canmat_dict402.obj + 29)
static inline canmat_status_t canmat_402_ul_identity_object_sub_serial_number (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_IDENTITY_OBJECT_SUB_SERIAL_NUMBER, val, err); }
static inline canmat_status_t canmat_402_dl_identity_object_sub_serial_number (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_IDENTITY_OBJECT_SUB_SERIAL_NUMBER, val, err); }
#define CANMAT_402_OBJ_SYNCHRONOUS_COUNTER_OVERFLOW_VALUE (canmat_dict402.obj + 30)
static inline canmat_status_t canmat_402_ul_synchronous_counter_overflow_value (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_SYNCHRONOUS_COUNTER_OVERFLOW_VALUE, val, err); }
static inline canmat_status_t canmat_402_dl_synchronous_counter_overflow_value (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_SYNCHRONOUS_COUNTER_OVERFLOW_VALUE, val, err); }
#define CANMAT_402_OBJ_VERIFY_CONFIGURATION (canmat_dict402.obj + 31)
#define CANMAT_402_OBJ_VERIFY_CONFIGURATION_SUB_CONFIGURATION_DATE (canmat_dict402.obj + 32)
static inline canmat_status_t canmat_402_ul_verify_configuration_sub_configuration_date (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_VERIFY_CONFIGURATION_SUB_CONFIGURATION_DATE, val, err); }
static inline canmat_status_t canmat_402_dl_verify_configuration_sub_configuration_date (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_VERIFY_CONFIGURATION_SUB_CONFIGURATION_DATE, val, err); }
#define CANMAT_402_OBJ_VERIFY_CONFIGURATION_SUB_CONFIGURATION_TIME (canmat_dict402.obj + 33)
static inline canmat_status_t canmat_402_ul_verify_configuration_sub_configuration_time (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_VERIFY_CONFIGURATION_SUB_CONFIGURATION_TIME, val, err); }
static inline canmat_status_t canmat_402_dl_verify_configuration_sub_configuration_time (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_VERIFY_CONFIGURATION_SUB_CONFIGURATION_TIME, val, err); }
#define CANMAT_402_OBJ_STORE_EDS (canmat_dict402.obj + 34)
#define CANMAT_402_OBJ_STORE_FORMAT (canmat_dict402.obj + 35)
static inline canmat_status_t canmat_402_ul_store_format (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_STORE_FORMAT, val, err); }
static inline canmat_status_t canmat_402_dl_store_format (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_STORE_FORMAT, val, err); }
#define CANMAT_402_OBJ_OS_COMMAND (canmat_dict402.obj + 36)
#define CANMAT_402_OBJ_OS_COMMAND_SUB_STATUS (canmat_dict402.obj + 37)
static inline canmat_status_t canmat_402_ul_os_command_sub_status (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_OS_COMMAND_SUB_STATUS, val, err); }
static inline canmat_status_t canmat_402_dl_os_command_sub_status (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_OS_COMMAND_SUB_STATUS, val, err); }
#define CANMAT_402_OBJ_OS_COMMAND_SUB_REPLY (canmat_dict402.obj + 38)
static inline canmat_status_t canmat_402_ul_os_command_sub_reply (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_OS_COMMAND_SUB_REPLY, val, err); }
static inline canmat_status_t canmat_402_dl_os_command_sub_reply (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_OS_COMMAND_SUB_REPLY, val, err); }
#define CANMAT_402_OBJ_OS_COMMAND_MODE (canmat_dict402.obj + 39)
static inline canmat_status_t canmat_402_ul_os_command_mode (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_OS_COMMAND_MODE, val, err); }
static inline canmat_status_t canmat_402_dl_os_command_mode (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_OS_COMMAND_MODE, val, err); }
#define CANMAT_402_OBJ_EMERGENCY_CONSUMER (canmat_dict402.obj + 40)
#define CANMAT_402_OBJ_ERROR_BEHAVIOR (canmat_dict402.obj + 41)
#define CANMAT_402_OBJ_ERROR_BEHAVIOR_SUB_COMMUNICATION_ERROR (canmat_dict402.obj + 42)
static inline canmat_status_t canmat_402_ul_error_behavior_sub_communication_error (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_ERROR_BEHAVIOR_SUB_COMMUNICATION_ERROR, val, err); }
static inline canmat_status_t canmat_402_dl_error_behavior_sub_communication_error (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_ERROR_BEHAVIOR_SUB_COMMUNICATION_ERROR, val, err); }
#define CANMAT_402_OBJ_RPDO00_COMMUNICATION_PARAMETER_SUB_HIGHEST_SUB_INDEX_SUPPORTED (canmat_dict402.obj + 43)
static inline canmat_status_t canmat_402_ul_rpdo00_communication_parameter_sub_highest_sub_index_supported (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO00_COMMUNICATION_PARAMETER_SUB_HIGHEST_SUB_INDEX_SUPPORTED, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo00_communication_parameter_sub_highest_sub_index_supported (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO00_COMMUNICATION_PARAMETER_SUB_HIGHEST_SUB_INDEX_SUPPORTED, val, err); }
#define CANMAT_402_OBJ_RPDO00_COMMUNICATION_PARAMETER_SUB_COB_ID (canmat_dict402.obj + 44)
static inline canmat_status_t canmat_402_ul_rpdo00_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO00_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo00_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO00_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
#define CANMAT_402_OBJ_RPDO00_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE (canmat_dict402.obj + 45)
static inline canmat_status_t canmat_402_ul_rpdo00_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO00_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo00_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO00_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
#define CANMAT_402_OBJ_RPDO00_COMMUNICATION_PARAMETER_SUB_INHIBIT_TIME (canmat_dict402.obj + 46)
static inline canmat_status_t canmat_402_ul_rpdo00_communication_parameter_sub_inhibit_time (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_RPDO00_COMMUNICATION_PARAMETER_SUB_INHIBIT_TIME, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo00_communication_parameter_sub_inhibit_time (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_RPDO00_COMMUNICATION_PARAMETER_SUB_INHIBIT_TIME, val, err); }
#define CANMAT_402_OBJ_RPDO00_COMMUNICATION_PARAMETER_SUB_COMPATIBILITY_ENTRY (canmat_dict402.obj + 47)
static inline canmat_status_t canmat_402_ul_rpdo00_communication_parameter_sub_compatibility_entry (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO00_COMMUNICATION_PARAMETER_SUB_COMPATIBILITY_ENTRY, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo00_communication_parameter_sub_compatibility_entry (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO00_COMMUNICATION_PARAMETER_SUB_COMPATIBILITY_ENTRY, val, err); }
#define CANMAT_402_OBJ_RPDO00_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER (canmat_dict402.obj + 48)
static inline canmat_status_t canmat_402_ul_rpdo00_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_RPDO00_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo00_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_RPDO00_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
#define CANMAT_402_OBJ_RPDO00_COMMUNICATION_PARAMETER_SUB_SYNC_START_VALUE (canmat_dict402.obj + 49)
static inline canmat_status_t canmat_402_ul_rpdo00_communication_parameter_sub_sync_start_value (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO00_COMMUNICATION_PARAMETER_SUB_SYNC_START_VALUE, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo00_communication_parameter_sub_sync_start_value (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO00_COMMUNICATION_PARAMETER_SUB_SYNC_START_VALUE, val, err); }
#define CANMAT_402_OBJ_RPDO01_COMMUNICATION_PARAMETER_SUB_HIGHEST_SUB_INDEX_SUPPORTED (canmat_dict402.obj + 50)
static inline canmat_status_t canmat_402_ul_rpdo01_communication_parameter_sub_highest_sub_index_supported (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO01_COMMUNICATION_PARAMETER_SUB_HIGHEST_SUB_INDEX_SUPPORTED, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo01_communication_parameter_sub_highest_sub_index_supported (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO01_COMMUNICATION_PARAMETER_SUB_HIGHEST_SUB_INDEX_SUPPORTED, val, err); }
#define CANMAT_402_OBJ_RPDO01_COMMUNICATION_PARAMETER_SUB_COB_ID (canmat_dict402.obj + 51)
static inline canmat_status_t canmat_402_ul_rpdo01_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO01_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo01_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO01_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
#define CANMAT_402_OBJ_RPDO01_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE (canmat_dict402.obj + 52)
static inline canmat_status_t canmat_402_ul_rpdo01_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO01_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo01_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO01_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
#define CANMAT_402_OBJ_RPDO01_COMMUNICATION_PARAMETER_SUB_INHIBIT_TIME (canmat_dict402.obj + 53)
static inline canmat_status_t canmat_402_ul_rpdo01_communication_parameter_sub_inhibit_time (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_RPDO01_COMMUNICATION_PARAMETER_SUB_INHIBIT_TIME, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo01_communication_parameter_sub_inhibit_time (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_RPDO01_COMMUNICATION_PARAMETER_SUB_INHIBIT_TIME, val, err); }
#define CANMAT_402_OBJ_RPDO01_COMMUNICATION_PARAMETER_SUB_COMPATIBILITY_ENTRY (canmat_dict402.obj + 54)
static inline canmat_status_t canmat_402_ul_rpdo01_communication_parameter_sub_compatibility_entry (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO01_COMMUNICATION_PARAMETER_SUB_COMPATIBILITY_ENTRY, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo01_communication_parameter_sub_compatibility_entry (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO01_COMMUNICATION_PARAMETER_SUB_COMPATIBILITY_ENTRY, val, err); }
#define CANMAT_402_OBJ_RPDO01_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER (canmat_dict402.obj + 55)
static inline canmat_status_t canmat_402_ul_rpdo01_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_RPDO01_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo01_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_RPDO01_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
#define CANMAT_402_OBJ_RPDO01_COMMUNICATION_PARAMETER_SUB_SYNC_START_VALUE (canmat_dict402.obj + 56)
static inline canmat_status_t canmat_402_ul_rpdo01_communication_parameter_sub_sync_start_value (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO01_COMMUNICATION_PARAMETER_SUB_SYNC_START_VALUE, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo01_communication_parameter_sub_sync_start_value (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO01_COMMUNICATION_PARAMETER_SUB_SYNC_START_VALUE, val, err); }
#define CANMAT_402_OBJ_RPDO02_COMMUNICATION_PARAMETER_SUB_HIGHEST_SUB_INDEX_SUPPORTED (canmat_dict402.obj + 57)
static inline canmat_status_t canmat_402_ul_rpdo02_communication_parameter_sub_highest_sub_index_supported (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO02_COMMUNICATION_PARAMETER_SUB_HIGHEST_SUB_INDEX_SUPPORTED, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo02_communication_parameter_sub_highest_sub_index_supported (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO02_COMMUNICATION_PARAMETER_SUB_HIGHEST_SUB_INDEX_SUPPORTED, val, err); }
#define CANMAT_402_OBJ_RPDO02_COMMUNICATION_PARAMETER_SUB_COB_ID (canmat_dict402.obj + 58)
static inline canmat_status_t canmat_402_ul_rpdo02_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO02_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo02_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO02_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
#define CANMAT_402_OBJ_RPDO02_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE (canmat_dict402.obj + 59)
static inline canmat_status_t canmat_402_ul_rpdo02_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO02_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo02_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO02_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
#define CANMAT_402_OBJ_RPDO02_COMMUNICATION_PARAMETER_SUB_INHIBIT_TIME (canmat_dict402.obj + 60)
static inline canmat_status_t canmat_402_ul_rpdo02_communication_parameter_sub_inhibit_time (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_RPDO02_COMMUNICATION_PARAMETER_SUB_INHIBIT_TIME, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo02_communication_parameter_sub_inhibit_time (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_RPDO02_COMMUNICATION_PARAMETER_SUB_INHIBIT_TIME, val, err); }
#define CANMAT_402_OBJ_RPDO02_COMMUNICATION_PARAMETER_SUB_COMPATIBILITY_ENTRY (canmat_dict402.obj + 61)
static inline canmat_status_t canmat_402_ul_rpdo02_communication_parameter_sub_compatibility_entry (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO02_COMMUNICATION_PARAMETER_SUB_COMPATIBILITY_ENTRY, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo02_communication_parameter_sub_compatibility_entry (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO02_COMMUNICATION_PARAMETER_SUB_COMPATIBILITY_ENTRY, val, err); }
#define CANMAT_402_OBJ_RPDO02_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER (canmat_dict402.obj + 62)
static inline canmat_status_t canmat_402_ul_rpdo02_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_RPDO02_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo02_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_RPDO02_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
#define CANMAT_402_OBJ_RPDO02_COMMUNICATION_PARAMETER_SUB_SYNC_START_VALUE (canmat_dict402.obj + 63)
static inline canmat_status_t canmat_402_ul_rpdo02_communication_parameter_sub_sync_start_value (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO02_COMMUNICATION_PARAMETER_SUB_SYNC_START_VALUE, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo02_communication_parameter_sub_sync_start_value (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO02_COMMUNICATION_PARAMETER_SUB_SYNC_START_VALUE, val, err); }
#define CANMAT_402_OBJ_RPDO03_COMMUNICATION_PARAMETER_SUB_HIGHEST_SUB_INDEX_SUPPORTED (canmat_dict402.obj + 64)
static inline canmat_status_t canmat_402_ul_rpdo03_communication_parameter_sub_highest_sub_index_supported (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO03_COMMUNICATION_PARAMETER_SUB_HIGHEST_SUB_INDEX_SUPPORTED, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo03_communication_parameter_sub_highest_sub_index_supported (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO03_COMMUNICATION_PARAMETER_SUB_HIGHEST_SUB_INDEX_SUPPORTED, val, err); }
#define CANMAT_402_OBJ_RPDO03_COMMUNICATION_PARAMETER_SUB_COB_ID (canmat_dict402.obj + 65)
static inline canmat_status_t canmat_402_ul_rpdo03_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO03_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo03_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO03_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
#define CANMAT_402_OBJ_RPDO03_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE (canmat_dict402.obj + 66)
static inline canmat_status_t canmat_402_ul_rpdo03_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO03_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo03_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO03_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
#define CANMAT_402_OBJ_RPDO03_COMMUNICATION_PARAMETER_SUB_INHIBIT_TIME (canmat_dict402.obj + 67)
static inline canmat_status_t canmat_402_ul_rpdo03_communication_parameter_sub_inhibit_time (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_RPDO03_COMMUNICATION_PARAMETER_SUB_INHIBIT_TIME, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo03_communication_parameter_sub_inhibit_time (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_RPDO03_COMMUNICATION_PARAMETER_SUB_INHIBIT_TIME, val, err); }
#define CANMAT_402_OBJ_RPDO03_COMMUNICATION_PARAMETER_SUB_COMPATIBILITY_ENTRY (canmat_dict402.obj + 68)
static inline canmat_status_t canmat_402_ul_rpdo03_communication_parameter_sub_compatibility_entry (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO03_COMMUNICATION_PARAMETER_SUB_COMPATIBILITY_ENTRY, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo03_communication_parameter_sub_compatibility_entry (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO03_COMMUNICATION_PARAMETER_SUB_COMPATIBILITY_ENTRY, val, err); }
#define CANMAT_402_OBJ_RPDO03_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER (canmat_dict402.obj + 69)
static inline canmat_status_t canmat_402_ul_rpdo03_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_RPDO03_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo03_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_RPDO03_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
#define CANMAT_402_OBJ_RPDO03_COMMUNICATION_PARAMETER_SUB_SYNC_START_VALUE (canmat_dict402.obj + 70)
static inline canmat_status_t canmat_402_ul_rpdo03_communication_parameter_sub_sync_start_value (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO03_COMMUNICATION_PARAMETER_SUB_SYNC_START_VALUE, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo03_communication_parameter_sub_sync_start_value (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO03_COMMUNICATION_PARAMETER_SUB_SYNC_START_VALUE, val, err); }
#define CANMAT_402_OBJ_RPDO04_COMMUNICATION_PARAMETER_SUB_HIGHEST_SUB_INDEX_SUPPORTED (canmat_dict402.obj + 71)
static inline canmat_status_t canmat_402_ul_rpdo04_communication_parameter_sub_highest_sub_index_supported (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO04_COMMUNICATION_PARAMETER_SUB_HIGHEST_SUB_INDEX_SUPPORTED, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo04_communication_parameter_sub_highest_sub_index_supported (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO04_COMMUNICATION_PARAMETER_SUB_HIGHEST_SUB_INDEX_SUPPORTED, val, err); }
#define CANMAT_402_OBJ_RPDO04_COMMUNICATION_PARAMETER_SUB_COB_ID (canmat_dict402.obj + 72)
static inline canmat_status_t canmat_402_ul_rpdo04_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO04_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo04_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO04_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
#define CANMAT_402_OBJ_RPDO04_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE (canmat_dict402.obj + 73)
static inline canmat_status_t canmat_402_ul_rpdo04_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO04_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo04_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO04_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
#define CANMAT_402_OBJ_RPDO04_COMMUNICATION_PARAMETER_SUB_INHIBIT_TIME (canmat_dict402.obj + 74)
static inline canmat_status_t canmat_402_ul_rpdo04_communication_parameter_sub_inhibit_time (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_RPDO04_COMMUNICATION_PARAMETER_SUB_INHIBIT_TIME, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo04_communication_parameter_sub_inhibit_time (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_RPDO04_COMMUNICATION_PARAMETER_SUB_INHIBIT_TIME, val, err); }
#define CANMAT_402_OBJ_RPDO04_COMMUNICATION_PARAMETER_SUB_COMPATIBILITY_ENTRY (canmat_dict402.obj + 75)
static inline canmat_status_t canmat_402_ul_rpdo04_communication_parameter_sub_compatibility_entry (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO04_COMMUNICATION_PARAMETER_SUB_COMPATIBILITY_ENTRY, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo04_communication_parameter_sub_compatibility_entry (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO04_COMMUNICATION_PARAMETER_SUB_COMPATIBILITY_ENTRY, val, err); }
#define CANMAT_402_OBJ_RPDO04_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER (canmat_dict402.obj + 76)
static inline canmat_status_t canmat_402_ul_rpdo04_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_RPDO04_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo04_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_RPDO04_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
#define CANMAT_402_OBJ_RPDO04_COMMUNICATION_PARAMETER_SUB_SYNC_START_VALUE (canmat_dict402.obj + 77)
static inline canmat_status_t canmat_402_ul_rpdo04_communication_parameter_sub_sync_start_value (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO04_COMMUNICATION_PARAMETER_SUB_SYNC_START_VALUE, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo04_communication_parameter_sub_sync_start_value (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO04_COMMUNICATION_PARAMETER_SUB_SYNC_START_VALUE, val, err); }
#define CANMAT_402_OBJ_RPDO05_COMMUNICATION_PARAMETER_SUB_HIGHEST_SUB_INDEX_SUPPORTED (canmat_dict402.obj + 78)
static inline canmat_status_t canmat_402_ul_rpdo05_communication_parameter_sub_highest_sub_index_supported (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO05_COMMUNICATION_PARAMETER_SUB_HIGHEST_SUB_INDEX_SUPPORTED, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo05_communication_parameter_sub_highest_sub_index_supported (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO05_COMMUNICATION_PARAMETER_SUB_HIGHEST_SUB_INDEX_SUPPORTED, val, err); }
#define CANMAT_402_OBJ_RPDO05_COMMUNICATION_PARAMETER_SUB_COB_ID (canmat_dict402.obj + 79)
static inline canmat_status_t canmat_402_ul_rpdo05_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO05_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo05_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO05_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
#define CANMAT_402_OBJ_RPDO05_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE (canmat_dict402.obj + 80)
static inline canmat_status_t canmat_402_ul_rpdo05_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO05_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo05_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO05_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
#define CANMAT_402_OBJ_RPDO05_COMMUNICATION_PARAMETER_SUB_INHIBIT_TIME (canmat_dict402.obj + 81)
static inline canmat_status_t canmat_402_ul_rpdo05_communication_parameter_sub_inhibit_time (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_RPDO05_COMMUNICATION_PARAMETER_SUB_INHIBIT_TIME, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo05_communication_parameter_sub_inhibit_time (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_RPDO05_COMMUNICATION_PARAMETER_SUB_INHIBIT_TIME, val, err); }
#define CANMAT_402_OBJ_RPDO05_COMMUNICATION_PARAMETER_SUB_COMPATIBILITY_ENTRY (canmat_dict402.obj + 82)
static inline canmat_status_t canmat_402_ul_rpdo05_communication_parameter_sub_compatibility_entry (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO05_COMMUNICATION_PARAMETER_SUB_COMPATIBILITY_ENTRY, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo05_communication_parameter_sub_compatibility_entry (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO05_COMMUNICATION_PARAMETER_SUB_COMPATIBILITY_ENTRY, val, err); }
#define CANMAT_402_OBJ_RPDO05_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER (canmat_dict402.obj + 83)
static inline canmat_status_t canmat_402_ul_rpdo05_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_RPDO05_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo05_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_RPDO05_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
#define CANMAT_402_OBJ_RPDO05_COMMUNICATION_PARAMETER_SUB_SYNC_START_VALUE (canmat_dict402.obj + 84)
static inline canmat_status_t canmat_402_ul_rpdo05_communication_parameter_sub_sync_start_value (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO05_COMMUNICATION_PARAMETER_SUB_SYNC_START_VALUE, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo05_communication_parameter_sub_sync_start_value (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO05_COMMUNICATION_PARAMETER_SUB_SYNC_START_VALUE, val, err); }
#define CANMAT_402_OBJ_RPDO06_COMMUNICATION_PARAMETER_SUB_HIGHEST_SUB_INDEX_SUPPORTED (canmat_dict402.obj + 85)
static inline canmat_status_t canmat_402_ul_rpdo06_communication_parameter_sub_highest_sub_index_supported (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO06_COMMUNICATION_PARAMETER_SUB_HIGHEST_SUB_INDEX_SUPPORTED, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo06_communication_parameter_sub_highest_sub_index_supported (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO06_COMMUNICATION_PARAMETER_SUB_HIGHEST_SUB_INDEX_SUPPORTED, val, err); }
#define CANMAT_402_OBJ_RPDO06_COMMUNICATION_PARAMETER_SUB_COB_ID (canmat_dict402.obj + 86)
static inline canmat_status_t canmat_402_ul_rpdo06_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO06_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo06_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO06_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
#define CANMAT_402_OBJ_RPDO06_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE (canmat_dict402.obj + 87)
static inline canmat_status_t canmat_402_ul_rpdo06_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO06_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo06_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO06_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
#define CANMAT_402_OBJ_RPDO06_COMMUNICATION_PARAMETER_SUB_INHIBIT_TIME (canmat_dict402.obj + 88)
static inline canmat_status_t canmat_402_ul_rpdo06_communication_parameter_sub_inhibit_time (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_RPDO06_COMMUNICATION_PARAMETER_SUB_INHIBIT_TIME, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo06_communication_parameter_sub_inhibit_time (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_RPDO06_COMMUNICATION_PARAMETER_SUB_INHIBIT_TIME, val, err); }
#define CANMAT_402_OBJ_RPDO06_COMMUNICATION_PARAMETER_SUB_COMPATIBILITY_ENTRY (canmat_dict402.obj + 89)
static inline canmat_status_t canmat_402_ul_rpdo06_communication_parameter_sub_compatibility_entry (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO06_COMMUNICATION_PARAMETER_SUB_COMPATIBILITY_ENTRY, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo06_communication_parameter_sub_compatibility_entry (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO06_COMMUNICATION_PARAMETER_SUB_COMPATIBILITY_ENTRY, val, err); }
#define CANMAT_402_OBJ_RPDO06_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER (canmat_dict402.obj + 90)
static inline canmat_status_t canmat_402_ul_rpdo06_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_RPDO06_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo06_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_RPDO06_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
#define CANMAT_402_OBJ_RPDO06_COMMUNICATION_PARAMETER_SUB_SYNC_START_VALUE (canmat_dict402.obj + 91)
static inline canmat_status_t canmat_402_ul_rpdo06_communication_parameter_sub_sync_start_value (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO06_COMMUNICATION_PARAMETER_SUB_SYNC_START_VALUE, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo06_communication_parameter_sub_sync_start_value (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO06_COMMUNICATION_PARAMETER_SUB_SYNC_START_VALUE, val, err); }
#define CANMAT_402_OBJ_RPDO07_COMMUNICATION_PARAMETER_SUB_HIGHEST_SUB_INDEX_SUPPORTED (canmat_dict402.obj + 92)
static inline canmat_status_t canmat_402_ul_rpdo07_communication_parameter_sub_highest_sub_index_supported (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO07_COMMUNICATION_PARAMETER_SUB_HIGHEST_SUB_INDEX_SUPPORTED, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo07_communication_parameter_sub_highest_sub_index_supported (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO07_COMMUNICATION_PARAMETER_SUB_HIGHEST_SUB_INDEX_SUPPORTED, val, err); }
#define CANMAT_402_OBJ_RPDO07_COMMUNICATION_PARAMETER_SUB_COB_ID (canmat_dict402.obj + 93)
static inline canmat_status_t canmat_402_ul_rpdo07_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO07_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo07_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO07_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
#define CANMAT_402_OBJ_RPDO07_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE (canmat_dict402.obj + 94)
static inline canmat_status_t canmat_402_ul_rpdo07_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO07_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo07_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO07_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
#define CANMAT_402_OBJ_RPDO07_COMMUNICATION_PARAMETER_SUB_INHIBIT_TIME (canmat_dict402.obj + 95)
static inline canmat_status_t canmat_402_ul_rpdo07_communication_parameter_sub_inhibit_time (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_RPDO07_COMMUNICATION_PARAMETER_SUB_INHIBIT_TIME, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo07_communication_parameter_sub_inhibit_time (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_RPDO07_COMMUNICATION_PARAMETER_SUB_INHIBIT_TIME, val, err); }
#define CANMAT_402_OBJ_RPDO07_COMMUNICATION_PARAMETER_SUB_COMPATIBILITY_ENTRY (canmat_dict402.obj + 96)
static inline canmat_status_t canmat_402_ul_rpdo07_communication_parameter_sub_compatibility_entry (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO07_COMMUNICATION_PARAMETER_SUB_COMPATIBILITY_ENTRY, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo07_communication_parameter_sub_compatibility_entry (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO07_COMMUNICATION_PARAMETER_SUB_COMPATIBILITY_ENTRY, val, err); }
#define CANMAT_402_OBJ_RPDO07_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER (canmat_dict402.obj + 97)
static inline canmat_status_t canmat_402_ul_rpdo07_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_RPDO07_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo07_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_RPDO07_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
#define CANMAT_402_OBJ_RPDO07_COMMUNICATION_PARAMETER_SUB_SYNC_START_VALUE (canmat_dict402.obj + 98)
static inline canmat_status_t canmat_402_ul_rpdo07_communication_parameter_sub_sync_start_value (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO07_COMMUNICATION_PARAMETER_SUB_SYNC_START_VALUE, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo07_communication_parameter_sub_sync_start_value (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO07_COMMUNICATION_PARAMETER_SUB_SYNC_START_VALUE, val, err); }
#define CANMAT_402_OBJ_RPDO08_COMMUNICATION_PARAMETER_SUB_HIGHEST_SUB_INDEX_SUPPORTED (canmat_dict402.obj + 99)
static inline canmat_status_t canmat_402_ul_rpdo08_communication_parameter_sub_highest_sub_index_supported (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO08_COMMUNICATION_PARAMETER_SUB_HIGHEST_SUB_INDEX_SUPPORTED, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo08_communication_parameter_sub_highest_sub_index_supported (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO08_COMMUNICATION_PARAMETER_SUB_HIGHEST_SUB_INDEX_SUPPORTED, val, err); }
#define CANMAT_402_OBJ_RPDO08_COMMUNICATION_PARAMETER_SUB_COB_ID (canmat_dict402.obj + 100)
static inline canmat_status_t canmat_402_ul_rpdo08_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO08_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo08_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO08_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
#define CANMAT_402_OBJ_RPDO08_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE (canmat_dict402.obj + 101)
static inline canmat_status_t canmat_402_ul_rpdo08_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO08_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo08_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO08_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
#define CANMAT_402_OBJ_RPDO08_COMMUNICATION_PARAMETER_SUB_INHIBIT_TIME (canmat_dict402.obj + 102)
static inline canmat_status_t canmat_402_ul_rpdo08_communication_parameter_sub_inhibit_time (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_RPDO08_COMMUNICATION_PARAMETER_SUB_INHIBIT_TIME, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo08_communication_parameter_sub_inhibit_time (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_RPDO08_COMMUNICATION_PARAMETER_SUB_INHIBIT_TIME, val, err); }
#define CANMAT_402_OBJ_RPDO08_COMMUNICATION_PARAMETER_SUB_COMPATIBILITY_ENTRY (canmat_dict402.obj + 103)
static inline canmat_status_t canmat_402_ul_rpdo08_communication_parameter_sub_compatibility_entry (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO08_COMMUNICATION_PARAMETER_SUB_COMPATIBILITY_ENTRY, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo08_communication_parameter_sub_compatibility_entry (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO08_COMMUNICATION_PARAMETER_SUB_COMPATIBILITY_ENTRY, val, err); }
#define CANMAT_402_OBJ_RPDO08_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER (canmat_dict402.obj + 104)
static inline canmat_status_t canmat_402_ul_rpdo08_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_RPDO08_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo08_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_RPDO08_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
#define CANMAT_402_OBJ_RPDO08_COMMUNICATION_PARAMETER_SUB_SYNC_START_VALUE (canmat_dict402.obj + 105)
static inline canmat_status_t canmat_402_ul_rpdo08_communication_parameter_sub_sync_start_value (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO08_COMMUNICATION_PARAMETER_SUB_SYNC_START_VALUE, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo08_communication_parameter_sub_sync_start_value (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO08_COMMUNICATION_PARAMETER_SUB_SYNC_START_VALUE, val, err); }
#define CANMAT_402_OBJ_RPDO09_COMMUNICATION_PARAMETER_SUB_HIGHEST_SUB_INDEX_SUPPORTED (canmat_dict402.obj + 106)
static inline canmat_status_t canmat_402_ul_rpdo09_communication_parameter_sub_highest_sub_index_supported (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO09_COMMUNICATION_PARAMETER_SUB_HIGHEST_SUB_INDEX_SUPPORTED, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo09_communication_parameter_sub_highest_sub_index_supported (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO09_COMMUNICATION_PARAMETER_SUB_HIGHEST_SUB_INDEX_SUPPORTED, val, err); }
#define CANMAT_402_OBJ_RPDO09_COMMUNICATION_PARAMETER_SUB_COB_ID (canmat_dict402.obj + 107)
static inline canmat_status_t canmat_402_ul_rpdo09_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO09_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo09_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO09_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
#define CANMAT_402_OBJ_RPDO09_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE (canmat_dict402.obj + 108)
static inline canmat_status_t canmat_402_ul_rpdo09_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO09_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo09_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO09_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
#define CANMAT_402_OBJ_RPDO09_COMMUNICATION_PARAMETER_SUB_INHIBIT_TIME (canmat_dict402.obj + 109)
static inline canmat_status_t canmat_402_ul_rpdo09_communication_parameter_sub_inhibit_time (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_RPDO09_COMMUNICATION_PARAMETER_SUB_INHIBIT_TIME, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo09_communication_parameter_sub_inhibit_time (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_RPDO09_COMMUNICATION_PARAMETER_SUB_INHIBIT_TIME, val, err); }
#define CANMAT_402_OBJ_RPDO09_COMMUNICATION_PARAMETER_SUB_COMPATIBILITY_ENTRY (canmat_dict402.obj + 110)
static inline canmat_status_t canmat_402_ul_rpdo09_communication_parameter_sub_compatibility_entry (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO09_COMMUNICATION_PARAMETER_SUB_COMPATIBILITY_ENTRY, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo09_communication_parameter_sub_compatibility_entry (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO09_COMMUNICATION_PARAMETER_SUB_COMPATIBILITY_ENTRY, val, err); }
#define CANMAT_402_OBJ_RPDO09_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER (canmat_dict402.obj + 111)
static inline canmat_status_t canmat_402_ul_rpdo09_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_RPDO09_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo09_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_RPDO09_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
#define CANMAT_402_OBJ_RPDO09_COMMUNICATION_PARAMETER_SUB_SYNC_START_VALUE (canmat_dict402.obj + 112)
static inline canmat_status_t canmat_402_ul_rpdo09_communication_parameter_sub_sync_start_value (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO09_COMMUNICATION_PARAMETER_SUB_SYNC_START_VALUE, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo09_communication_parameter_sub_sync_start_value (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO09_COMMUNICATION_PARAMETER_SUB_SYNC_START_VALUE, val, err); }
#define CANMAT_402_OBJ_RPDO00_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS (canmat_dict402.obj + 113)
static inline canmat_status_t canmat_402_ul_rpdo00_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO00_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo00_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO00_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
#define CANMAT_402_OBJ_RPDO00_MAPPING_PARAMETER_SUB_1ST_OBJECT (canmat_dict402.obj + 114)
static inline canmat_status_t canmat_402_ul_rpdo00_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO00_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo00_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO00_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO00_MAPPING_PARAMETER_SUB_2ND_OBJECT (canmat_dict402.obj + 115)
static inline canmat_status_t canmat_402_ul_rpdo00_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO00_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo00_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO00_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO00_MAPPING_PARAMETER_SUB_3RD_OBJECT (canmat_dict402.obj + 116)
static inline canmat_status_t canmat_402_ul_rpdo00_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO00_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo00_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO00_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO00_MAPPING_PARAMETER_SUB_4TH_OBJECT (canmat_dict402.obj + 117)
static inline canmat_status_t canmat_402_ul_rpdo00_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO00_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo00_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO00_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO00_MAPPING_PARAMETER_SUB_5TH_OBJECT (canmat_dict402.obj + 118)
static inline canmat_status_t canmat_402_ul_rpdo00_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO00_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo00_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO00_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO00_MAPPING_PARAMETER_SUB_6TH_OBJECT (canmat_dict402.obj + 119)
static inline canmat_status_t canmat_402_ul_rpdo00_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO00_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo00_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO00_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO00_MAPPING_PARAMETER_SUB_7TH_OBJECT (canmat_dict402.obj + 120)
static inline canmat_status_t canmat_402_ul_rpdo00_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO00_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo00_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO00_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO00_MAPPING_PARAMETER_SUB_8TH_OBJECT (canmat_dict402.obj + 121)
static inline canmat_status_t canmat_402_ul_rpdo00_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO00_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo00_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO00_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO01_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS (canmat_dict402.obj + 122)
static inline canmat_status_t canmat_402_ul_rpdo01_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO01_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo01_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO01_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
#define CANMAT_402_OBJ_RPDO01_MAPPING_PARAMETER_SUB_1ST_OBJECT (canmat_dict402.obj + 123)
static inline canmat_status_t canmat_402_ul_rpdo01_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO01_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo01_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO01_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO01_MAPPING_PARAMETER_SUB_2ND_OBJECT (canmat_dict402.obj + 124)
static inline canmat_status_t canmat_402_ul_rpdo01_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO01_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo01_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO01_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO01_MAPPING_PARAMETER_SUB_3RD_OBJECT (canmat_dict402.obj + 125)
static inline canmat_status_t canmat_402_ul_rpdo01_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO01_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo01_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO01_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO01_MAPPING_PARAMETER_SUB_4TH_OBJECT (canmat_dict402.obj + 126)
static inline canmat_status_t canmat_402_ul_rpdo01_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO01_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo01_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO01_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO01_MAPPING_PARAMETER_SUB_5TH_OBJECT (canmat_dict402.obj + 127)
static inline canmat_status_t canmat_402_ul_rpdo01_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO01_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo01_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO01_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO01_MAPPING_PARAMETER_SUB_6TH_OBJECT (canmat_dict402.obj + 128)
static inline canmat_status_t canmat_402_ul_rpdo01_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO01_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo01_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO01_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO01_MAPPING_PARAMETER_SUB_7TH_OBJECT (canmat_dict402.obj + 129)
static inline canmat_status_t canmat_402_ul_rpdo01_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO01_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo01_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO01_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO01_MAPPING_PARAMETER_SUB_8TH_OBJECT (canmat_dict402.obj + 130)
static inline canmat_status_t canmat_402_ul_rpdo01_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO01_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo01_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO01_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO02_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS (canmat_dict402.obj + 131)
static inline canmat_status_t canmat_402_ul_rpdo02_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO02_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo02_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO02_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
#define CANMAT_402_OBJ_RPDO02_MAPPING_PARAMETER_SUB_1ST_OBJECT (canmat_dict402.obj + 132)
static inline canmat_status_t canmat_402_ul_rpdo02_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO02_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo02_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO02_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO02_MAPPING_PARAMETER_SUB_2ND_OBJECT (canmat_dict402.obj + 133)
static inline canmat_status_t canmat_402_ul_rpdo02_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO02_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo02_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO02_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO02_MAPPING_PARAMETER_SUB_3RD_OBJECT (canmat_dict402.obj + 134)
static inline canmat_status_t canmat_402_ul_rpdo02_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO02_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo02_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO02_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO02_MAPPING_PARAMETER_SUB_4TH_OBJECT (canmat_dict402.obj + 135)
static inline canmat_status_t canmat_402_ul_rpdo02_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO02_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo02_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO02_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO02_MAPPING_PARAMETER_SUB_5TH_OBJECT (canmat_dict402.obj + 136)
static inline canmat_status_t canmat_402_ul_rpdo02_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO02_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo02_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO02_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO02_MAPPING_PARAMETER_SUB_6TH_OBJECT (canmat_dict402.obj + 137)
static inline canmat_status_t canmat_402_ul_rpdo02_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO02_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo02_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO02_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO02_MAPPING_PARAMETER_SUB_7TH_OBJECT (canmat_dict402.obj + 138)
static inline canmat_status_t canmat_402_ul_rpdo02_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO02_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo02_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO02_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO02_MAPPING_PARAMETER_SUB_8TH_OBJECT (canmat_dict402.obj + 139)
static inline canmat_status_t canmat_402_ul_rpdo02_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO02_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo02_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO02_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO03_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS (canmat_dict402.obj + 140)
static inline canmat_status_t canmat_402_ul_rpdo03_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO03_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo03_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO03_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
#define CANMAT_402_OBJ_RPDO03_MAPPING_PARAMETER_SUB_1ST_OBJECT (canmat_dict402.obj + 141)
static inline canmat_status_t canmat_402_ul_rpdo03_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO03_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo03_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO03_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO03_MAPPING_PARAMETER_SUB_2ND_OBJECT (canmat_dict402.obj + 142)
static inline canmat_status_t canmat_402_ul_rpdo03_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO03_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo03_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO03_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO03_MAPPING_PARAMETER_SUB_3RD_OBJECT (canmat_dict402.obj + 143)
static inline canmat_status_t canmat_402_ul_rpdo03_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO03_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo03_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO03_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO03_MAPPING_PARAMETER_SUB_4TH_OBJECT (canmat_dict402.obj + 144)
static inline canmat_status_t canmat_402_ul_rpdo03_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO03_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo03_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO03_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO03_MAPPING_PARAMETER_SUB_5TH_OBJECT (canmat_dict402.obj + 145)
static inline canmat_status_t canmat_402_ul_rpdo03_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO03_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo03_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO03_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO03_MAPPING_PARAMETER_SUB_6TH_OBJECT (canmat_dict402.obj + 146)
static inline canmat_status_t canmat_402_ul_rpdo03_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO03_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo03_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO03_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO03_MAPPING_PARAMETER_SUB_7TH_OBJECT (canmat_dict402.obj + 147)
static inline canmat_status_t canmat_402_ul_rpdo03_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO03_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo03_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO03_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO03_MAPPING_PARAMETER_SUB_8TH_OBJECT (canmat_dict402.obj + 148)
static inline canmat_status_t canmat_402_ul_rpdo03_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO03_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo03_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO03_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO04_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS (canmat_dict402.obj + 149)
static inline canmat_status_t canmat_402_ul_rpdo04_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO04_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo04_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO04_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
#define CANMAT_402_OBJ_RPDO04_MAPPING_PARAMETER_SUB_1ST_OBJECT (canmat_dict402.obj + 150)
static inline canmat_status_t canmat_402_ul_rpdo04_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO04_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo04_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO04_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO04_MAPPING_PARAMETER_SUB_2ND_OBJECT (canmat_dict402.obj + 151)
static inline canmat_status_t canmat_402_ul_rpdo04_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO04_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo04_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO04_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO04_MAPPING_PARAMETER_SUB_3RD_OBJECT (canmat_dict402.obj + 152)
static inline canmat_status_t canmat_402_ul_rpdo04_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO04_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo04_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO04_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO04_MAPPING_PARAMETER_SUB_4TH_OBJECT (canmat_dict402.obj + 153)
static inline canmat_status_t canmat_402_ul_rpdo04_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO04_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo04_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO04_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO04_MAPPING_PARAMETER_SUB_5TH_OBJECT (canmat_dict402.obj + 154)
static inline canmat_status_t canmat_402_ul_rpdo04_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO04_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo04_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO04_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO04_MAPPING_PARAMETER_SUB_6TH_OBJECT (canmat_dict402.obj + 155)
static inline canmat_status_t canmat_402_ul_rpdo04_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO04_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo04_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO04_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO04_MAPPING_PARAMETER_SUB_7TH_OBJECT (canmat_dict402.obj + 156)
static inline canmat_status_t canmat_402_ul_rpdo04_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO04_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo04_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO04_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO04_MAPPING_PARAMETER_SUB_8TH_OBJECT (canmat_dict402.obj + 157)
static inline canmat_status_t canmat_402_ul_rpdo04_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO04_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo04_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO04_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO05_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS (canmat_dict402.obj + 158)
static inline canmat_status_t canmat_402_ul_rpdo05_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO05_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo05_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO05_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
#define CANMAT_402_OBJ_RPDO05_MAPPING_PARAMETER_SUB_1ST_OBJECT (canmat_dict402.obj + 159)
static inline canmat_status_t canmat_402_ul_rpdo05_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO05_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo05_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO05_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO05_MAPPING_PARAMETER_SUB_2ND_OBJECT (canmat_dict402.obj + 160)
static inline canmat_status_t canmat_402_ul_rpdo05_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO05_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo05_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO05_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO05_MAPPING_PARAMETER_SUB_3RD_OBJECT (canmat_dict402.obj + 161)
static inline canmat_status_t canmat_402_ul_rpdo05_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO05_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo05_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO05_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO05_MAPPING_PARAMETER_SUB_4TH_OBJECT (canmat_dict402.obj + 162)
static inline canmat_status_t canmat_402_ul_rpdo05_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO05_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo05_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO05_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO05_MAPPING_PARAMETER_SUB_5TH_OBJECT (canmat_dict402.obj + 163)
static inline canmat_status_t canmat_402_ul_rpdo05_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO05_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo05_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO05_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO05_MAPPING_PARAMETER_SUB_6TH_OBJECT (canmat_dict402.obj + 164)
static inline canmat_status_t canmat_402_ul_rpdo05_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO05_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo05_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO05_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO05_MAPPING_PARAMETER_SUB_7TH_OBJECT (canmat_dict402.obj + 165)
static inline canmat_status_t canmat_402_ul_rpdo05_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO05_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo05_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO05_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO05_MAPPING_PARAMETER_SUB_8TH_OBJECT (canmat_dict402.obj + 166)
static inline canmat_status_t canmat_402_ul_rpdo05_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO05_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo05_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO05_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO06_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS (canmat_dict402.obj + 167)
static inline canmat_status_t canmat_402_ul_rpdo06_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO06_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo06_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO06_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
#define CANMAT_402_OBJ_RPDO06_MAPPING_PARAMETER_SUB_1ST_OBJECT (canmat_dict402.obj + 168)
static inline canmat_status_t canmat_402_ul_rpdo06_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO06_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo06_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO06_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO06_MAPPING_PARAMETER_SUB_2ND_OBJECT (canmat_dict402.obj + 169)
static inline canmat_status_t canmat_402_ul_rpdo06_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO06_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo06_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO06_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO06_MAPPING_PARAMETER_SUB_3RD_OBJECT (canmat_dict402.obj + 170)
static inline canmat_status_t canmat_402_ul_rpdo06_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO06_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo06_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO06_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO06_MAPPING_PARAMETER_SUB_4TH_OBJECT (canmat_dict402.obj + 171)
static inline canmat_status_t canmat_402_ul_rpdo06_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO06_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo06_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO06_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO06_MAPPING_PARAMETER_SUB_5TH_OBJECT (canmat_dict402.obj + 172)
static inline canmat_status_t canmat_402_ul_rpdo06_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO06_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo06_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO06_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO06_MAPPING_PARAMETER_SUB_6TH_OBJECT (canmat_dict402.obj + 173)
static inline canmat_status_t canmat_402_ul_rpdo06_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO06_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo06_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO06_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO06_MAPPING_PARAMETER_SUB_7TH_OBJECT (canmat_dict402.obj + 174)
static inline canmat_status_t canmat_402_ul_rpdo06_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO06_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo06_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO06_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO06_MAPPING_PARAMETER_SUB_8TH_OBJECT (canmat_dict402.obj + 175)
static inline canmat_status_t canmat_402_ul_rpdo06_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO06_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo06_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO06_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO07_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS (canmat_dict402.obj + 176)
static inline canmat_status_t canmat_402_ul_rpdo07_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO07_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo07_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO07_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
#define CANMAT_402_OBJ_RPDO07_MAPPING_PARAMETER_SUB_1ST_OBJECT (canmat_dict402.obj + 177)
static inline canmat_status_t canmat_402_ul_rpdo07_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO07_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo07_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO07_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO07_MAPPING_PARAMETER_SUB_2ND_OBJECT (canmat_dict402.obj + 178)
static inline canmat_status_t canmat_402_ul_rpdo07_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO07_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo07_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO07_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO07_MAPPING_PARAMETER_SUB_3RD_OBJECT (canmat_dict402.obj + 179)
static inline canmat_status_t canmat_402_ul_rpdo07_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO07_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo07_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO07_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO07_MAPPING_PARAMETER_SUB_4TH_OBJECT (canmat_dict402.obj + 180)
static inline canmat_status_t canmat_402_ul_rpdo07_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO07_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo07_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO07_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO07_MAPPING_PARAMETER_SUB_5TH_OBJECT (canmat_dict402.obj + 181)
static inline canmat_status_t canmat_402_ul_rpdo07_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO07_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo07_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO07_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO07_MAPPING_PARAMETER_SUB_6TH_OBJECT (canmat_dict402.obj + 182)
static inline canmat_status_t canmat_402_ul_rpdo07_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO07_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo07_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO07_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO07_MAPPING_PARAMETER_SUB_7TH_OBJECT (canmat_dict402.obj + 183)
static inline canmat_status_t canmat_402_ul_rpdo07_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO07_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo07_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO07_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO07_MAPPING_PARAMETER_SUB_8TH_OBJECT (canmat_dict402.obj + 184)
static inline canmat_status_t canmat_402_ul_rpdo07_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO07_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo07_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO07_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO08_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS (canmat_dict402.obj + 185)
static inline canmat_status_t canmat_402_ul_rpdo08_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO08_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo08_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO08_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
#define CANMAT_402_OBJ_RPDO08_MAPPING_PARAMETER_SUB_1ST_OBJECT (canmat_dict402.obj + 186)
static inline canmat_status_t canmat_402_ul_rpdo08_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO08_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo08_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO08_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO08_MAPPING_PARAMETER_SUB_2ND_OBJECT (canmat_dict402.obj + 187)
static inline canmat_status_t canmat_402_ul_rpdo08_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO08_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo08_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO08_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO08_MAPPING_PARAMETER_SUB_3RD_OBJECT (canmat_dict402.obj + 188)
static inline canmat_status_t canmat_402_ul_rpdo08_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO08_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo08_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO08_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO08_MAPPING_PARAMETER_SUB_4TH_OBJECT (canmat_dict402.obj + 189)
static inline canmat_status_t canmat_402_ul_rpdo08_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO08_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo08_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO08_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO08_MAPPING_PARAMETER_SUB_5TH_OBJECT (canmat_dict402.obj + 190)
static inline canmat_status_t canmat_402_ul_rpdo08_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO08_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo08_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO08_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO08_MAPPING_PARAMETER_SUB_6TH_OBJECT (canmat_dict402.obj + 191)
static inline canmat_status_t canmat_402_ul_rpdo08_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO08_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo08_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO08_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO08_MAPPING_PARAMETER_SUB_7TH_OBJECT (canmat_dict402.obj + 192)
static inline canmat_status_t canmat_402_ul_rpdo08_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO08_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo08_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO08_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO08_MAPPING_PARAMETER_SUB_8TH_OBJECT (canmat_dict402.obj + 193)
static inline canmat_status_t canmat_402_ul_rpdo08_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO08_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo08_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO08_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO09_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS (canmat_dict402.obj + 194)
static inline canmat_status_t canmat_402_ul_rpdo09_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_RPDO09_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo09_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_RPDO09_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
#define CANMAT_402_OBJ_RPDO09_MAPPING_PARAMETER_SUB_1ST_OBJECT (canmat_dict402.obj + 195)
static inline canmat_status_t canmat_402_ul_rpdo09_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO09_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo09_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO09_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO09_MAPPING_PARAMETER_SUB_2ND_OBJECT (canmat_dict402.obj + 196)
static inline canmat_status_t canmat_402_ul_rpdo09_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO09_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo09_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO09_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO09_MAPPING_PARAMETER_SUB_3RD_OBJECT (canmat_dict402.obj + 197)
static inline canmat_status_t canmat_402_ul_rpdo09_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO09_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo09_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO09_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO09_MAPPING_PARAMETER_SUB_4TH_OBJECT (canmat_dict402.obj + 198)
static inline canmat_status_t canmat_402_ul_rpdo09_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO09_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo09_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO09_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO09_MAPPING_PARAMETER_SUB_5TH_OBJECT (canmat_dict402.obj + 199)
static inline canmat_status_t canmat_402_ul_rpdo09_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO09_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo09_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO09_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO09_MAPPING_PARAMETER_SUB_6TH_OBJECT (canmat_dict402.obj + 200)
static inline canmat_status_t canmat_402_ul_rpdo09_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO09_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo09_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO09_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO09_MAPPING_PARAMETER_SUB_7TH_OBJECT (canmat_dict402.obj + 201)
static inline canmat_status_t canmat_402_ul_rpdo09_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO09_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo09_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO09_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_RPDO09_MAPPING_PARAMETER_SUB_8TH_OBJECT (canmat_dict402.obj + 202)
static inline canmat_status_t canmat_402_ul_rpdo09_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_RPDO09_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_rpdo09_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_RPDO09_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO00_COMMUNICATION_PARAMETER_SUB_COB_ID (canmat_dict402.obj + 203)
static inline canmat_status_t canmat_402_ul_tpdo00_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO00_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo00_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO00_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
#define CANMAT_402_OBJ_TPDO00_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE (canmat_dict402.obj + 204)
static inline canmat_status_t canmat_402_ul_tpdo00_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_TPDO00_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo00_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_TPDO00_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
#define CANMAT_402_OBJ_TPDO00_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER (canmat_dict402.obj + 205)
static inline canmat_status_t canmat_402_ul_tpdo00_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_TPDO00_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo00_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_TPDO00_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
#define CANMAT_402_OBJ_TPDO01_COMMUNICATION_PARAMETER_SUB_COB_ID (canmat_dict402.obj + 206)
static inline canmat_status_t canmat_402_ul_tpdo01_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO01_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo01_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO01_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
#define CANMAT_402_OBJ_TPDO01_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE (canmat_dict402.obj + 207)
static inline canmat_status_t canmat_402_ul_tpdo01_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_TPDO01_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo01_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_TPDO01_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
#define CANMAT_402_OBJ_TPDO01_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER (canmat_dict402.obj + 208)
static inline canmat_status_t canmat_402_ul_tpdo01_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_TPDO01_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo01_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_TPDO01_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
#define CANMAT_402_OBJ_TPDO02_COMMUNICATION_PARAMETER_SUB_COB_ID (canmat_dict402.obj + 209)
static inline canmat_status_t canmat_402_ul_tpdo02_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO02_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo02_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO02_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
#define CANMAT_402_OBJ_TPDO02_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE (canmat_dict402.obj + 210)
static inline canmat_status_t canmat_402_ul_tpdo02_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_TPDO02_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo02_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_TPDO02_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
#define CANMAT_402_OBJ_TPDO02_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER (canmat_dict402.obj + 211)
static inline canmat_status_t canmat_402_ul_tpdo02_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_TPDO02_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo02_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_TPDO02_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
#define CANMAT_402_OBJ_TPDO03_COMMUNICATION_PARAMETER_SUB_COB_ID (canmat_dict402.obj + 212)
static inline canmat_status_t canmat_402_ul_tpdo03_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO03_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo03_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO03_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
#define CANMAT_402_OBJ_TPDO03_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE (canmat_dict402.obj + 213)
static inline canmat_status_t canmat_402_ul_tpdo03_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_TPDO03_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo03_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_TPDO03_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
#define CANMAT_402_OBJ_TPDO03_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER (canmat_dict402.obj + 214)
static inline canmat_status_t canmat_402_ul_tpdo03_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_TPDO03_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo03_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_TPDO03_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
#define CANMAT_402_OBJ_TPDO04_COMMUNICATION_PARAMETER_SUB_COB_ID (canmat_dict402.obj + 215)
static inline canmat_status_t canmat_402_ul_tpdo04_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO04_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo04_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO04_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
#define CANMAT_402_OBJ_TPDO04_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE (canmat_dict402.obj + 216)
static inline canmat_status_t canmat_402_ul_tpdo04_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_TPDO04_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo04_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_TPDO04_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
#define CANMAT_402_OBJ_TPDO04_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER (canmat_dict402.obj + 217)
static inline canmat_status_t canmat_402_ul_tpdo04_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_TPDO04_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo04_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_TPDO04_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
#define CANMAT_402_OBJ_TPDO05_COMMUNICATION_PARAMETER_SUB_COB_ID (canmat_dict402.obj + 218)
static inline canmat_status_t canmat_402_ul_tpdo05_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO05_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo05_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO05_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
#define CANMAT_402_OBJ_TPDO05_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE (canmat_dict402.obj + 219)
static inline canmat_status_t canmat_402_ul_tpdo05_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_TPDO05_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo05_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_TPDO05_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
#define CANMAT_402_OBJ_TPDO05_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER (canmat_dict402.obj + 220)
static inline canmat_status_t canmat_402_ul_tpdo05_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_TPDO05_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo05_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_TPDO05_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
#define CANMAT_402_OBJ_TPDO06_COMMUNICATION_PARAMETER_SUB_COB_ID (canmat_dict402.obj + 221)
static inline canmat_status_t canmat_402_ul_tpdo06_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO06_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo06_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO06_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
#define CANMAT_402_OBJ_TPDO06_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE (canmat_dict402.obj + 222)
static inline canmat_status_t canmat_402_ul_tpdo06_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_TPDO06_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo06_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_TPDO06_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
#define CANMAT_402_OBJ_TPDO06_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER (canmat_dict402.obj + 223)
static inline canmat_status_t canmat_402_ul_tpdo06_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_TPDO06_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo06_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_TPDO06_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
#define CANMAT_402_OBJ_TPDO07_COMMUNICATION_PARAMETER_SUB_COB_ID (canmat_dict402.obj + 224)
static inline canmat_status_t canmat_402_ul_tpdo07_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO07_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo07_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO07_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
#define CANMAT_402_OBJ_TPDO07_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE (canmat_dict402.obj + 225)
static inline canmat_status_t canmat_402_ul_tpdo07_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_TPDO07_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo07_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_TPDO07_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
#define CANMAT_402_OBJ_TPDO07_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER (canmat_dict402.obj + 226)
static inline canmat_status_t canmat_402_ul_tpdo07_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_TPDO07_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo07_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_TPDO07_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
#define CANMAT_402_OBJ_TPDO08_COMMUNICATION_PARAMETER_SUB_COB_ID (canmat_dict402.obj + 227)
static inline canmat_status_t canmat_402_ul_tpdo08_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO08_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo08_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO08_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
#define CANMAT_402_OBJ_TPDO08_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE (canmat_dict402.obj + 228)
static inline canmat_status_t canmat_402_ul_tpdo08_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_TPDO08_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo08_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_TPDO08_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
#define CANMAT_402_OBJ_TPDO08_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER (canmat_dict402.obj + 229)
static inline canmat_status_t canmat_402_ul_tpdo08_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_TPDO08_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo08_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_TPDO08_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
#define CANMAT_402_OBJ_TPDO09_COMMUNICATION_PARAMETER_SUB_COB_ID (canmat_dict402.obj + 230)
static inline canmat_status_t canmat_402_ul_tpdo09_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO09_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo09_communication_parameter_sub_cob_id (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO09_COMMUNICATION_PARAMETER_SUB_COB_ID, val, err); }
#define CANMAT_402_OBJ_TPDO09_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE (canmat_dict402.obj + 231)
static inline canmat_status_t canmat_402_ul_tpdo09_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_TPDO09_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo09_communication_parameter_sub_transmission_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_TPDO09_COMMUNICATION_PARAMETER_SUB_TRANSMISSION_TYPE, val, err); }
#define CANMAT_402_OBJ_TPDO09_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER (canmat_dict402.obj + 232)
static inline canmat_status_t canmat_402_ul_tpdo09_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_TPDO09_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo09_communication_parameter_sub_event_timer (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_TPDO09_COMMUNICATION_PARAMETER_SUB_EVENT_TIMER, val, err); }
#define CANMAT_402_OBJ_TPDO00_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS (canmat_dict402.obj + 233)
static inline canmat_status_t canmat_402_ul_tpdo00_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_TPDO00_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo00_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_TPDO00_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
#define CANMAT_402_OBJ_TPDO00_MAPPING_PARAMETER_SUB_1ST_OBJECT (canmat_dict402.obj + 234)
static inline canmat_status_t canmat_402_ul_tpdo00_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO00_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo00_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO00_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO00_MAPPING_PARAMETER_SUB_2ND_OBJECT (canmat_dict402.obj + 235)
static inline canmat_status_t canmat_402_ul_tpdo00_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO00_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo00_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO00_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO00_MAPPING_PARAMETER_SUB_3RD_OBJECT (canmat_dict402.obj + 236)
static inline canmat_status_t canmat_402_ul_tpdo00_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO00_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo00_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO00_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO00_MAPPING_PARAMETER_SUB_4TH_OBJECT (canmat_dict402.obj + 237)
static inline canmat_status_t canmat_402_ul_tpdo00_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO00_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo00_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO00_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO00_MAPPING_PARAMETER_SUB_5TH_OBJECT (canmat_dict402.obj + 238)
static inline canmat_status_t canmat_402_ul_tpdo00_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO00_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo00_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO00_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO00_MAPPING_PARAMETER_SUB_6TH_OBJECT (canmat_dict402.obj + 239)
static inline canmat_status_t canmat_402_ul_tpdo00_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO00_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo00_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO00_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO00_MAPPING_PARAMETER_SUB_7TH_OBJECT (canmat_dict402.obj + 240)
static inline canmat_status_t canmat_402_ul_tpdo00_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO00_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo00_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO00_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO00_MAPPING_PARAMETER_SUB_8TH_OBJECT (canmat_dict402.obj + 241)
static inline canmat_status_t canmat_402_ul_tpdo00_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO00_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo00_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO00_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO01_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS (canmat_dict402.obj + 242)
static inline canmat_status_t canmat_402_ul_tpdo01_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_TPDO01_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo01_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_TPDO01_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
#define CANMAT_402_OBJ_TPDO01_MAPPING_PARAMETER_SUB_1ST_OBJECT (canmat_dict402.obj + 243)
static inline canmat_status_t canmat_402_ul_tpdo01_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO01_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo01_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO01_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO01_MAPPING_PARAMETER_SUB_2ND_OBJECT (canmat_dict402.obj + 244)
static inline canmat_status_t canmat_402_ul_tpdo01_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO01_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo01_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO01_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO01_MAPPING_PARAMETER_SUB_3RD_OBJECT (canmat_dict402.obj + 245)
static inline canmat_status_t canmat_402_ul_tpdo01_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO01_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo01_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO01_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO01_MAPPING_PARAMETER_SUB_4TH_OBJECT (canmat_dict402.obj + 246)
static inline canmat_status_t canmat_402_ul_tpdo01_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO01_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo01_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO01_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO01_MAPPING_PARAMETER_SUB_5TH_OBJECT (canmat_dict402.obj + 247)
static inline canmat_status_t canmat_402_ul_tpdo01_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO01_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo01_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO01_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO01_MAPPING_PARAMETER_SUB_6TH_OBJECT (canmat_dict402.obj + 248)
static inline canmat_status_t canmat_402_ul_tpdo01_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO01_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo01_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO01_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO01_MAPPING_PARAMETER_SUB_7TH_OBJECT (canmat_dict402.obj + 249)
static inline canmat_status_t canmat_402_ul_tpdo01_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO01_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo01_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO01_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO01_MAPPING_PARAMETER_SUB_8TH_OBJECT (canmat_dict402.obj + 250)
static inline canmat_status_t canmat_402_ul_tpdo01_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO01_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo01_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO01_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO02_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS (canmat_dict402.obj + 251)
static inline canmat_status_t canmat_402_ul_tpdo02_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_TPDO02_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo02_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_TPDO02_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
#define CANMAT_402_OBJ_TPDO02_MAPPING_PARAMETER_SUB_1ST_OBJECT (canmat_dict402.obj + 252)
static inline canmat_status_t canmat_402_ul_tpdo02_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO02_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo02_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO02_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO02_MAPPING_PARAMETER_SUB_2ND_OBJECT (canmat_dict402.obj + 253)
static inline canmat_status_t canmat_402_ul_tpdo02_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO02_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo02_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO02_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO02_MAPPING_PARAMETER_SUB_3RD_OBJECT (canmat_dict402.obj + 254)
static inline canmat_status_t canmat_402_ul_tpdo02_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO02_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo02_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO02_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO02_MAPPING_PARAMETER_SUB_4TH_OBJECT (canmat_dict402.obj + 255)
static inline canmat_status_t canmat_402_ul_tpdo02_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO02_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo02_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO02_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO02_MAPPING_PARAMETER_SUB_5TH_OBJECT (canmat_dict402.obj + 256)
static inline canmat_status_t canmat_402_ul_tpdo02_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO02_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo02_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO02_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO02_MAPPING_PARAMETER_SUB_6TH_OBJECT (canmat_dict402.obj + 257)
static inline canmat_status_t canmat_402_ul_tpdo02_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO02_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo02_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO02_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO02_MAPPING_PARAMETER_SUB_7TH_OBJECT (canmat_dict402.obj + 258)
static inline canmat_status_t canmat_402_ul_tpdo02_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO02_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo02_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO02_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO02_MAPPING_PARAMETER_SUB_8TH_OBJECT (canmat_dict402.obj + 259)
static inline canmat_status_t canmat_402_ul_tpdo02_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO02_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo02_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO02_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO03_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS (canmat_dict402.obj + 260)
static inline canmat_status_t canmat_402_ul_tpdo03_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_TPDO03_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo03_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_TPDO03_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
#define CANMAT_402_OBJ_TPDO03_MAPPING_PARAMETER_SUB_1ST_OBJECT (canmat_dict402.obj + 261)
static inline canmat_status_t canmat_402_ul_tpdo03_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO03_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo03_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO03_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO03_MAPPING_PARAMETER_SUB_2ND_OBJECT (canmat_dict402.obj + 262)
static inline canmat_status_t canmat_402_ul_tpdo03_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO03_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo03_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO03_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO03_MAPPING_PARAMETER_SUB_3RD_OBJECT (canmat_dict402.obj + 263)
static inline canmat_status_t canmat_402_ul_tpdo03_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO03_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo03_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO03_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO03_MAPPING_PARAMETER_SUB_4TH_OBJECT (canmat_dict402.obj + 264)
static inline canmat_status_t canmat_402_ul_tpdo03_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO03_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo03_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO03_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO03_MAPPING_PARAMETER_SUB_5TH_OBJECT (canmat_dict402.obj + 265)
static inline canmat_status_t canmat_402_ul_tpdo03_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO03_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo03_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO03_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO03_MAPPING_PARAMETER_SUB_6TH_OBJECT (canmat_dict402.obj + 266)
static inline canmat_status_t canmat_402_ul_tpdo03_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO03_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo03_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO03_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO03_MAPPING_PARAMETER_SUB_7TH_OBJECT (canmat_dict402.obj + 267)
static inline canmat_status_t canmat_402_ul_tpdo03_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO03_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo03_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO03_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO03_MAPPING_PARAMETER_SUB_8TH_OBJECT (canmat_dict402.obj + 268)
static inline canmat_status_t canmat_402_ul_tpdo03_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO03_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo03_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO03_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO04_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS (canmat_dict402.obj + 269)
static inline canmat_status_t canmat_402_ul_tpdo04_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_TPDO04_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo04_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_TPDO04_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
#define CANMAT_402_OBJ_TPDO04_MAPPING_PARAMETER_SUB_1ST_OBJECT (canmat_dict402.obj + 270)
static inline canmat_status_t canmat_402_ul_tpdo04_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO04_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo04_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO04_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO04_MAPPING_PARAMETER_SUB_2ND_OBJECT (canmat_dict402.obj + 271)
static inline canmat_status_t canmat_402_ul_tpdo04_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO04_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo04_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO04_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO04_MAPPING_PARAMETER_SUB_3RD_OBJECT (canmat_dict402.obj + 272)
static inline canmat_status_t canmat_402_ul_tpdo04_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO04_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo04_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO04_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO04_MAPPING_PARAMETER_SUB_4TH_OBJECT (canmat_dict402.obj + 273)
static inline canmat_status_t canmat_402_ul_tpdo04_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO04_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo04_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO04_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO04_MAPPING_PARAMETER_SUB_5TH_OBJECT (canmat_dict402.obj + 274)
static inline canmat_status_t canmat_402_ul_tpdo04_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO04_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo04_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO04_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO04_MAPPING_PARAMETER_SUB_6TH_OBJECT (canmat_dict402.obj + 275)
static inline canmat_status_t canmat_402_ul_tpdo04_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO04_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo04_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO04_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO04_MAPPING_PARAMETER_SUB_7TH_OBJECT (canmat_dict402.obj + 276)
static inline canmat_status_t canmat_402_ul_tpdo04_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO04_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo04_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO04_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO04_MAPPING_PARAMETER_SUB_8TH_OBJECT (canmat_dict402.obj + 277)
static inline canmat_status_t canmat_402_ul_tpdo04_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO04_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo04_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO04_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO05_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS (canmat_dict402.obj + 278)
static inline canmat_status_t canmat_402_ul_tpdo05_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_TPDO05_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo05_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_TPDO05_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
#define CANMAT_402_OBJ_TPDO05_MAPPING_PARAMETER_SUB_1ST_OBJECT (canmat_dict402.obj + 279)
static inline canmat_status_t canmat_402_ul_tpdo05_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO05_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo05_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO05_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO05_MAPPING_PARAMETER_SUB_2ND_OBJECT (canmat_dict402.obj + 280)
static inline canmat_status_t canmat_402_ul_tpdo05_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO05_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo05_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO05_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO05_MAPPING_PARAMETER_SUB_3RD_OBJECT (canmat_dict402.obj + 281)
static inline canmat_status_t canmat_402_ul_tpdo05_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO05_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo05_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO05_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO05_MAPPING_PARAMETER_SUB_4TH_OBJECT (canmat_dict402.obj + 282)
static inline canmat_status_t canmat_402_ul_tpdo05_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO05_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo05_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO05_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO05_MAPPING_PARAMETER_SUB_5TH_OBJECT (canmat_dict402.obj + 283)
static inline canmat_status_t canmat_402_ul_tpdo05_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO05_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo05_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO05_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO05_MAPPING_PARAMETER_SUB_6TH_OBJECT (canmat_dict402.obj + 284)
static inline canmat_status_t canmat_402_ul_tpdo05_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO05_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo05_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO05_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO05_MAPPING_PARAMETER_SUB_7TH_OBJECT (canmat_dict402.obj + 285)
static inline canmat_status_t canmat_402_ul_tpdo05_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO05_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo05_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO05_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO05_MAPPING_PARAMETER_SUB_8TH_OBJECT (canmat_dict402.obj + 286)
static inline canmat_status_t canmat_402_ul_tpdo05_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO05_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo05_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO05_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO06_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS (canmat_dict402.obj + 287)
static inline canmat_status_t canmat_402_ul_tpdo06_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_TPDO06_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo06_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_TPDO06_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
#define CANMAT_402_OBJ_TPDO06_MAPPING_PARAMETER_SUB_1ST_OBJECT (canmat_dict402.obj + 288)
static inline canmat_status_t canmat_402_ul_tpdo06_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO06_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo06_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO06_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO06_MAPPING_PARAMETER_SUB_2ND_OBJECT (canmat_dict402.obj + 289)
static inline canmat_status_t canmat_402_ul_tpdo06_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO06_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo06_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO06_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO06_MAPPING_PARAMETER_SUB_3RD_OBJECT (canmat_dict402.obj + 290)
static inline canmat_status_t canmat_402_ul_tpdo06_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO06_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo06_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO06_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO06_MAPPING_PARAMETER_SUB_4TH_OBJECT (canmat_dict402.obj + 291)
static inline canmat_status_t canmat_402_ul_tpdo06_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO06_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo06_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO06_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO06_MAPPING_PARAMETER_SUB_5TH_OBJECT (canmat_dict402.obj + 292)
static inline canmat_status_t canmat_402_ul_tpdo06_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO06_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo06_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO06_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO06_MAPPING_PARAMETER_SUB_6TH_OBJECT (canmat_dict402.obj + 293)
static inline canmat_status_t canmat_402_ul_tpdo06_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO06_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo06_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO06_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO06_MAPPING_PARAMETER_SUB_7TH_OBJECT (canmat_dict402.obj + 294)
static inline canmat_status_t canmat_402_ul_tpdo06_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO06_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo06_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO06_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO06_MAPPING_PARAMETER_SUB_8TH_OBJECT (canmat_dict402.obj + 295)
static inline canmat_status_t canmat_402_ul_tpdo06_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO06_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo06_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO06_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO07_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS (canmat_dict402.obj + 296)
static inline canmat_status_t canmat_402_ul_tpdo07_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_TPDO07_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo07_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_TPDO07_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
#define CANMAT_402_OBJ_TPDO07_MAPPING_PARAMETER_SUB_1ST_OBJECT (canmat_dict402.obj + 297)
static inline canmat_status_t canmat_402_ul_tpdo07_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO07_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo07_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO07_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO07_MAPPING_PARAMETER_SUB_2ND_OBJECT (canmat_dict402.obj + 298)
static inline canmat_status_t canmat_402_ul_tpdo07_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO07_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo07_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO07_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO07_MAPPING_PARAMETER_SUB_3RD_OBJECT (canmat_dict402.obj + 299)
static inline canmat_status_t canmat_402_ul_tpdo07_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO07_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo07_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO07_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO07_MAPPING_PARAMETER_SUB_4TH_OBJECT (canmat_dict402.obj + 300)
static inline canmat_status_t canmat_402_ul_tpdo07_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO07_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo07_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO07_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO07_MAPPING_PARAMETER_SUB_5TH_OBJECT (canmat_dict402.obj + 301)
static inline canmat_status_t canmat_402_ul_tpdo07_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO07_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo07_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO07_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO07_MAPPING_PARAMETER_SUB_6TH_OBJECT (canmat_dict402.obj + 302)
static inline canmat_status_t canmat_402_ul_tpdo07_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO07_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo07_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO07_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO07_MAPPING_PARAMETER_SUB_7TH_OBJECT (canmat_dict402.obj + 303)
static inline canmat_status_t canmat_402_ul_tpdo07_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO07_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo07_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO07_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO07_MAPPING_PARAMETER_SUB_8TH_OBJECT (canmat_dict402.obj + 304)
static inline canmat_status_t canmat_402_ul_tpdo07_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO07_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo07_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO07_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO08_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS (canmat_dict402.obj + 305)
static inline canmat_status_t canmat_402_ul_tpdo08_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_TPDO08_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo08_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_TPDO08_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
#define CANMAT_402_OBJ_TPDO08_MAPPING_PARAMETER_SUB_1ST_OBJECT (canmat_dict402.obj + 306)
static inline canmat_status_t canmat_402_ul_tpdo08_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO08_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo08_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO08_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO08_MAPPING_PARAMETER_SUB_2ND_OBJECT (canmat_dict402.obj + 307)
static inline canmat_status_t canmat_402_ul_tpdo08_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO08_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo08_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO08_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO08_MAPPING_PARAMETER_SUB_3RD_OBJECT (canmat_dict402.obj + 308)
static inline canmat_status_t canmat_402_ul_tpdo08_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO08_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo08_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO08_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO08_MAPPING_PARAMETER_SUB_4TH_OBJECT (canmat_dict402.obj + 309)
static inline canmat_status_t canmat_402_ul_tpdo08_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO08_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo08_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO08_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO08_MAPPING_PARAMETER_SUB_5TH_OBJECT (canmat_dict402.obj + 310)
static inline canmat_status_t canmat_402_ul_tpdo08_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO08_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo08_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO08_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO08_MAPPING_PARAMETER_SUB_6TH_OBJECT (canmat_dict402.obj + 311)
static inline canmat_status_t canmat_402_ul_tpdo08_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO08_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo08_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO08_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO08_MAPPING_PARAMETER_SUB_7TH_OBJECT (canmat_dict402.obj + 312)
static inline canmat_status_t canmat_402_ul_tpdo08_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO08_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo08_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO08_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO08_MAPPING_PARAMETER_SUB_8TH_OBJECT (canmat_dict402.obj + 313)
static inline canmat_status_t canmat_402_ul_tpdo08_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO08_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo08_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO08_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO09_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS (canmat_dict402.obj + 314)
static inline canmat_status_t canmat_402_ul_tpdo09_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_TPDO09_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo09_mapping_parameter_sub_number_of_mapped_objects (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_TPDO09_MAPPING_PARAMETER_SUB_NUMBER_OF_MAPPED_OBJECTS, val, err); }
#define CANMAT_402_OBJ_TPDO09_MAPPING_PARAMETER_SUB_1ST_OBJECT (canmat_dict402.obj + 315)
static inline canmat_status_t canmat_402_ul_tpdo09_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO09_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo09_mapping_parameter_sub_1st_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO09_MAPPING_PARAMETER_SUB_1ST_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO09_MAPPING_PARAMETER_SUB_2ND_OBJECT (canmat_dict402.obj + 316)
static inline canmat_status_t canmat_402_ul_tpdo09_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO09_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo09_mapping_parameter_sub_2nd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO09_MAPPING_PARAMETER_SUB_2ND_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO09_MAPPING_PARAMETER_SUB_3RD_OBJECT (canmat_dict402.obj + 317)
static inline canmat_status_t canmat_402_ul_tpdo09_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO09_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo09_mapping_parameter_sub_3rd_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO09_MAPPING_PARAMETER_SUB_3RD_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO09_MAPPING_PARAMETER_SUB_4TH_OBJECT (canmat_dict402.obj + 318)
static inline canmat_status_t canmat_402_ul_tpdo09_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO09_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo09_mapping_parameter_sub_4th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO09_MAPPING_PARAMETER_SUB_4TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO09_MAPPING_PARAMETER_SUB_5TH_OBJECT (canmat_dict402.obj + 319)
static inline canmat_status_t canmat_402_ul_tpdo09_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO09_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo09_mapping_parameter_sub_5th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO09_MAPPING_PARAMETER_SUB_5TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO09_MAPPING_PARAMETER_SUB_6TH_OBJECT (canmat_dict402.obj + 320)
static inline canmat_status_t canmat_402_ul_tpdo09_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO09_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo09_mapping_parameter_sub_6th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO09_MAPPING_PARAMETER_SUB_6TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO09_MAPPING_PARAMETER_SUB_7TH_OBJECT (canmat_dict402.obj + 321)
static inline canmat_status_t canmat_402_ul_tpdo09_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO09_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo09_mapping_parameter_sub_7th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO09_MAPPING_PARAMETER_SUB_7TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_TPDO09_MAPPING_PARAMETER_SUB_8TH_OBJECT (canmat_dict402.obj + 322)
static inline canmat_status_t canmat_402_ul_tpdo09_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_TPDO09_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
static inline canmat_status_t canmat_402_dl_tpdo09_mapping_parameter_sub_8th_object (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_TPDO09_MAPPING_PARAMETER_SUB_8TH_OBJECT, val, err); }
#define CANMAT_402_OBJ_ABORT_CONNECTION_OPTION_CODE (canmat_dict402.obj + 323)
static inline canmat_status_t canmat_402_ul_abort_connection_option_code (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER16 *val, uint32_t *err)
{ return canmat_obj_ul_i16(cif, node, CANMAT_402_OBJ_ABORT_CONNECTION_OPTION_CODE, val, err); }
static inline canmat_status_t canmat_402_dl_abort_connection_option_code (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER16 val, uint32_t *err)
{ return canmat_obj_dl_i16(cif, node, CANMAT_402_OBJ_ABORT_CONNECTION_OPTION_CODE, val, err); }
#define CANMAT_402_OBJ_ERROR_CODE (canmat_dict402.obj + 324)
static inline canmat_status_t canmat_402_ul_error_code (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_ERROR_CODE, val, err); }
static inline canmat_status_t canmat_402_dl_error_code (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_ERROR_CODE, val, err); }
#define CANMAT_402_OBJ_CONTROLWORD (canmat_dict402.obj + 325)
static inline canmat_status_t canmat_402_ul_controlword (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_CONTROLWORD, val, err); }
static inline canmat_status_t canmat_402_dl_controlword (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_CONTROLWORD, val, err); }
#define CANMAT_402_OBJ_STATUSWORD (canmat_dict402.obj + 326)
static inline canmat_status_t canmat_402_ul_statusword (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_STATUSWORD, val, err); }
static inline canmat_status_t canmat_402_dl_statusword (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_STATUSWORD, val, err); }
#define CANMAT_402_OBJ_VL_TARGET_VELOCITY (canmat_dict402.obj + 327)
static inline canmat_status_t canmat_402_ul_vl_target_velocity (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER16 *val, uint32_t *err)
{ return canmat_obj_ul_i16(cif, node, CANMAT_402_OBJ_VL_TARGET_VELOCITY, val, err); }
static inline canmat_status_t canmat_402_dl_vl_target_velocity (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER16 val, uint32_t *err)
{ return canmat_obj_dl_i16(cif, node, CANMAT_402_OBJ_VL_TARGET_VELOCITY, val, err); }
#define CANMAT_402_OBJ_VL_VELOCITY_DEMAND (canmat_dict402.obj + 328)
static inline canmat_status_t canmat_402_ul_vl_velocity_demand (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER16 *val, uint32_t *err)
{ return canmat_obj_ul_i16(cif, node, CANMAT_402_OBJ_VL_VELOCITY_DEMAND, val, err); }
static inline canmat_status_t canmat_402_dl_vl_velocity_demand (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER16 val, uint32_t *err)
{ return canmat_obj_dl_i16(cif, node, CANMAT_402_OBJ_VL_VELOCITY_DEMAND, val, err); }
#define CANMAT_402_OBJ_VL_CONTROL_EFFORT (canmat_dict402.obj + 329)
static inline canmat_status_t canmat_402_ul_vl_control_effort (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER16 *val, uint32_t *err)
{ return canmat_obj_ul_i16(cif, node, CANMAT_402_OBJ_VL_CONTROL_EFFORT, val, err); }
static inline canmat_status_t canmat_402_dl_vl_control_effort (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER16 val, uint32_t *err)
{ return canmat_obj_dl_i16(cif, node, CANMAT_402_OBJ_VL_CONTROL_EFFORT, val, err); }
#define CANMAT_402_OBJ_VL_VELOCITY_REFERENCE (canmat_dict402.obj + 330)
static inline canmat_status_t canmat_402_ul_vl_velocity_reference (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_VL_VELOCITY_REFERENCE, val, err); }
static inline canmat_status_t canmat_402_dl_vl_velocity_reference (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_VL_VELOCITY_REFERENCE, val, err); }
#define CANMAT_402_OBJ_VL_PERCENTAGE_DEMAND (canmat_dict402.obj + 331)
static inline canmat_status_t canmat_402_ul_vl_percentage_demand (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER16 *val, uint32_t *err)
{ return canmat_obj_ul_i16(cif, node, CANMAT_402_OBJ_VL_PERCENTAGE_DEMAND, val, err); }
static inline canmat_status_t canmat_402_dl_vl_percentage_demand (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER16 val, uint32_t *err)
{ return canmat_obj_dl_i16(cif, node, CANMAT_402_OBJ_VL_PERCENTAGE_DEMAND, val, err); }
#define CANMAT_402_OBJ_VL_ACTUAL_PERCENTAGE (canmat_dict402.obj + 332)
static inline canmat_status_t canmat_402_ul_vl_actual_percentage (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER16 *val, uint32_t *err)
{ return canmat_obj_ul_i16(cif, node, CANMAT_402_OBJ_VL_ACTUAL_PERCENTAGE, val, err); }
static inline canmat_status_t canmat_402_dl_vl_actual_percentage (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER16 val, uint32_t *err)
{ return canmat_obj_dl_i16(cif, node, CANMAT_402_OBJ_VL_ACTUAL_PERCENTAGE, val, err); }
#define CANMAT_402_OBJ_VL_MANIPULATED_PERCENTAGE (canmat_dict402.obj + 333)
static inline canmat_status_t canmat_402_ul_vl_manipulated_percentage (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER16 *val, uint32_t *err)
{ return canmat_obj_ul_i16(cif, node, CANMAT_402_OBJ_VL_MANIPULATED_PERCENTAGE, val, err); }
static inline canmat_status_t canmat_402_dl_vl_manipulated_percentage (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER16 val, uint32_t *err)
{ return canmat_obj_dl_i16(cif, node, CANMAT_402_OBJ_VL_MANIPULATED_PERCENTAGE, val, err); }
#define CANMAT_402_OBJ_HALT_OPTION_CODE (canmat_dict402.obj + 334)
static inline canmat_status_t canmat_402_ul_halt_option_code (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER16 *val, uint32_t *err)
{ return canmat_obj_ul_i16(cif, node, CANMAT_402_OBJ_HALT_OPTION_CODE, val, err); }
static inline canmat_status_t canmat_402_dl_halt_option_code (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER16 val, uint32_t *err)
{ return canmat_obj_dl_i16(cif, node, CANMAT_402_OBJ_HALT_OPTION_CODE, val, err); }
#define CANMAT_402_OBJ_FAULT_REACTION_OPTION_CODE (canmat_dict402.obj + 335)
static inline canmat_status_t canmat_402_ul_fault_reaction_option_code (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_FAULT_REACTION_OPTION_CODE, val, err); }
static inline canmat_status_t canmat_402_dl_fault_reaction_option_code (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_FAULT_REACTION_OPTION_CODE, val, err); }
#define CANMAT_402_OBJ_MODES_OF_OPERATION (canmat_dict402.obj + 336)
static inline canmat_status_t canmat_402_ul_modes_of_operation (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER8 *val, uint32_t *err)
{ return canmat_obj_ul_i8(cif, node, CANMAT_402_OBJ_MODES_OF_OPERATION, val, err); }
static inline canmat_status_t canmat_402_dl_modes_of_operation (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER8 val, uint32_t *err)
{ return canmat_obj_dl_i8(cif, node, CANMAT_402_OBJ_MODES_OF_OPERATION, val, err); }
#define CANMAT_402_OBJ_MODES_OF_OPERATION_DISPLAY (canmat_dict402.obj + 337)
static inline canmat_status_t canmat_402_ul_modes_of_operation_display (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER8 *val, uint32_t *err)
{ return canmat_obj_ul_i8(cif, node, CANMAT_402_OBJ_MODES_OF_OPERATION_DISPLAY, val, err); }
static inline canmat_status_t canmat_402_dl_modes_of_operation_display (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER8 val, uint32_t *err)
{ return canmat_obj_dl_i8(cif, node, CANMAT_402_OBJ_MODES_OF_OPERATION_DISPLAY, val, err); }
#define CANMAT_402_OBJ_POSITION_ACTUAL_VALUE (canmat_dict402.obj + 338)
static inline canmat_status_t canmat_402_ul_position_actual_value (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER32 *val, uint32_t *err)
{ return canmat_obj_ul_i32(cif, node, CANMAT_402_OBJ_POSITION_ACTUAL_VALUE, val, err); }
static inline canmat_status_t canmat_402_dl_position_actual_value (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER32 val, uint32_t *err)
{ return canmat_obj_dl_i32(cif, node, CANMAT_402_OBJ_POSITION_ACTUAL_VALUE, val, err); }
#define CANMAT_402_OBJ_VELOCITY_DEMAND_VALUE (canmat_dict402.obj + 339)
static inline canmat_status_t canmat_402_ul_velocity_demand_value (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER32 *val, uint32_t *err)
{ return canmat_obj_ul_i32(cif, node, CANMAT_402_OBJ_VELOCITY_DEMAND_VALUE, val, err); }
static inline canmat_status_t canmat_402_dl_velocity_demand_value (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER32 val, uint32_t *err)
{ return canmat_obj_dl_i32(cif, node, CANMAT_402_OBJ_VELOCITY_DEMAND_VALUE, val, err); }
#define CANMAT_402_OBJ_VELOCITY_ACTUAL_VALUE (canmat_dict402.obj + 340)
static inline canmat_status_t canmat_402_ul_velocity_actual_value (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER32 *val, uint32_t *err)
{ return canmat_obj_ul_i32(cif, node, CANMAT_402_OBJ_VELOCITY_ACTUAL_VALUE, val, err); }
static inline canmat_status_t canmat_402_dl_velocity_actual_value (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER32 val, uint32_t *err)
{ return canmat_obj_dl_i32(cif, node, CANMAT_402_OBJ_VELOCITY_ACTUAL_VALUE, val, err); }
#define CANMAT_402_OBJ_VELOCITY_THRESHOLD (canmat_dict402.obj + 341)
static inline canmat_status_t canmat_402_ul_velocity_threshold (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_VELOCITY_THRESHOLD, val, err); }
static inline canmat_status_t canmat_402_dl_velocity_threshold (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_VELOCITY_THRESHOLD, val, err); }
#define CANMAT_402_OBJ_VELOCITY_THRESHOLD_TIME (canmat_dict402.obj + 342)
static inline canmat_status_t canmat_402_ul_velocity_threshold_time (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_VELOCITY_THRESHOLD_TIME, val, err); }
static inline canmat_status_t canmat_402_dl_velocity_threshold_time (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_VELOCITY_THRESHOLD_TIME, val, err); }
#define CANMAT_402_OBJ_TARGET_POSITION (canmat_dict402.obj + 343)
static inline canmat_status_t canmat_402_ul_target_position (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER32 *val, uint32_t *err)
{ return canmat_obj_ul_i32(cif, node, CANMAT_402_OBJ_TARGET_POSITION, val, err); }
static inline canmat_status_t canmat_402_dl_target_position (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER32 val, uint32_t *err)
{ return canmat_obj_dl_i32(cif, node, CANMAT_402_OBJ_TARGET_POSITION, val, err); }
#define CANMAT_402_OBJ_POSITION_RANGE_LIMIT (canmat_dict402.obj + 344)
#define CANMAT_402_OBJ_POSITION_RANGE_LIMIT_SUB_NUMBER_OF_ENTRIES (canmat_dict402.obj + 345)
static inline canmat_status_t canmat_402_ul_position_range_limit_sub_number_of_entries (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_POSITION_RANGE_LIMIT_SUB_NUMBER_OF_ENTRIES, val, err); }
static inline canmat_status_t canmat_402_dl_position_range_limit_sub_number_of_entries (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_POSITION_RANGE_LIMIT_SUB_NUMBER_OF_ENTRIES, val, err); }
#define CANMAT_402_OBJ_POSITION_RANGE_LIMIT_SUB_MIN_POSITION_RANGE_LIMIT (canmat_dict402.obj + 346)
static inline canmat_status_t canmat_402_ul_position_range_limit_sub_min_position_range_limit (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER32 *val, uint32_t *err)
{ return canmat_obj_ul_i32(cif, node, CANMAT_402_OBJ_POSITION_RANGE_LIMIT_SUB_MIN_POSITION_RANGE_LIMIT, val, err); }
static inline canmat_status_t canmat_402_dl_position_range_limit_sub_min_position_range_limit (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER32 val, uint32_t *err)
{ return canmat_obj_dl_i32(cif, node, CANMAT_402_OBJ_POSITION_RANGE_LIMIT_SUB_MIN_POSITION_RANGE_LIMIT, val, err); }
#define CANMAT_402_OBJ_POSITION_RANGE_LIMIT_SUB_MAX_POSITION_RANGE_LIMIT (canmat_dict402.obj + 347)
static inline canmat_status_t canmat_402_ul_position_range_limit_sub_max_position_range_limit (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER32 *val, uint32_t *err)
{ return canmat_obj_ul_i32(cif, node, CANMAT_402_OBJ_POSITION_RANGE_LIMIT_SUB_MAX_POSITION_RANGE_LIMIT, val, err); }
static inline canmat_status_t canmat_402_dl_position_range_limit_sub_max_position_range_limit (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER32 val, uint32_t *err)
{ return canmat_obj_dl_i32(cif, node, CANMAT_402_OBJ_POSITION_RANGE_LIMIT_SUB_MAX_POSITION_RANGE_LIMIT, val, err); }
#define CANMAT_402_OBJ_HOME_OFFSET (canmat_dict402.obj + 348)
static inline canmat_status_t canmat_402_ul_home_offset (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER32 *val, uint32_t *err)
{ return canmat_obj_ul_i32(cif, node, CANMAT_402_OBJ_HOME_OFFSET, val, err); }
static inline canmat_status_t canmat_402_dl_home_offset (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER32 val, uint32_t *err)
{ return canmat_obj_dl_i32(cif, node, CANMAT_402_OBJ_HOME_OFFSET, val, err); }
#define CANMAT_402_OBJ_SOFTWARE_POSITION_LIMIT (canmat_dict402.obj + 349)
#define CANMAT_402_OBJ_SOFTWARE_POSITION_LIMIT_SUB_NUMBER_OF_ENTRIES (canmat_dict402.obj + 350)
static inline canmat_status_t canmat_402_ul_software_position_limit_sub_number_of_entries (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_SOFTWARE_POSITION_LIMIT_SUB_NUMBER_OF_ENTRIES, val, err); }
static inline canmat_status_t canmat_402_dl_software_position_limit_sub_number_of_entries (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_SOFTWARE_POSITION_LIMIT_SUB_NUMBER_OF_ENTRIES, val, err); }
#define CANMAT_402_OBJ_SOFTWARE_POSITION_LIMIT_SUB_MIN_POSITION_RANGE_LIMIT (canmat_dict402.obj + 351)
static inline canmat_status_t canmat_402_ul_software_position_limit_sub_min_position_range_limit (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER32 *val, uint32_t *err)
{ return canmat_obj_ul_i32(cif, node, CANMAT_402_OBJ_SOFTWARE_POSITION_LIMIT_SUB_MIN_POSITION_RANGE_LIMIT, val, err); }
static inline canmat_status_t canmat_402_dl_software_position_limit_sub_min_position_range_limit (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER32 val, uint32_t *err)
{ return canmat_obj_dl_i32(cif, node, CANMAT_402_OBJ_SOFTWARE_POSITION_LIMIT_SUB_MIN_POSITION_RANGE_LIMIT, val, err); }
#define CANMAT_402_OBJ_SOFTWARE_POSITION_LIMIT_SUB_MAX_POSITION_RANGE_LIMIT (canmat_dict402.obj + 352)
static inline canmat_status_t canmat_402_ul_software_position_limit_sub_max_position_range_limit (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER32 *val, uint32_t *err)
{ return canmat_obj_ul_i32(cif, node, CANMAT_402_OBJ_SOFTWARE_POSITION_LIMIT_SUB_MAX_POSITION_RANGE_LIMIT, val, err); }
static inline canmat_status_t canmat_402_dl_software_position_limit_sub_max_position_range_limit (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER32 val, uint32_t *err)
{ return canmat_obj_dl_i32(cif, node, CANMAT_402_OBJ_SOFTWARE_POSITION_LIMIT_SUB_MAX_POSITION_RANGE_LIMIT, val, err); }
#define CANMAT_402_OBJ_POLARITY (canmat_dict402.obj + 353)
static inline canmat_status_t canmat_402_ul_polarity (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_POLARITY, val, err); }
static inline canmat_status_t canmat_402_dl_polarity (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_POLARITY, val, err); }
#define CANMAT_402_OBJ_PROFILE_VELOCITY (canmat_dict402.obj + 354)
static inline canmat_status_t canmat_402_ul_profile_velocity (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_PROFILE_VELOCITY, val, err); }
static inline canmat_status_t canmat_402_dl_profile_velocity (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_PROFILE_VELOCITY, val, err); }
#define CANMAT_402_OBJ_END_VELOCITY (canmat_dict402.obj + 355)
static inline canmat_status_t canmat_402_ul_end_velocity (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_END_VELOCITY, val, err); }
static inline canmat_status_t canmat_402_dl_end_velocity (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_END_VELOCITY, val, err); }
#define CANMAT_402_OBJ_PROFILE_ACCELERATION (canmat_dict402.obj + 356)
static inline canmat_status_t canmat_402_ul_profile_acceleration (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_PROFILE_ACCELERATION, val, err); }
static inline canmat_status_t canmat_402_dl_profile_acceleration (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_PROFILE_ACCELERATION, val, err); }
#define CANMAT_402_OBJ_PROFILE_DECELERATION (canmat_dict402.obj + 357)
static inline canmat_status_t canmat_402_ul_profile_deceleration (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_PROFILE_DECELERATION, val, err); }
static inline canmat_status_t canmat_402_dl_profile_deceleration (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_PROFILE_DECELERATION, val, err); }
#define CANMAT_402_OBJ_QUICK_STOP_DECELERATION (canmat_dict402.obj + 358)
static inline canmat_status_t canmat_402_ul_quick_stop_deceleration (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_QUICK_STOP_DECELERATION, val, err); }
static inline canmat_status_t canmat_402_dl_quick_stop_deceleration (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_QUICK_STOP_DECELERATION, val, err); }
#define CANMAT_402_OBJ_MOTION_PROFILE_TYPE (canmat_dict402.obj + 359)
static inline canmat_status_t canmat_402_ul_motion_profile_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER16 *val, uint32_t *err)
{ return canmat_obj_ul_i16(cif, node, CANMAT_402_OBJ_MOTION_PROFILE_TYPE, val, err); }
static inline canmat_status_t canmat_402_dl_motion_profile_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER16 val, uint32_t *err)
{ return canmat_obj_dl_i16(cif, node, CANMAT_402_OBJ_MOTION_PROFILE_TYPE, val, err); }
#define CANMAT_402_OBJ_POSITION_NOTATION_INDEX (canmat_dict402.obj + 360)
static inline canmat_status_t canmat_402_ul_position_notation_index (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER8 *val, uint32_t *err)
{ return canmat_obj_ul_i8(cif, node, CANMAT_402_OBJ_POSITION_NOTATION_INDEX, val, err); }
static inline canmat_status_t canmat_402_dl_position_notation_index (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER8 val, uint32_t *err)
{ return canmat_obj_dl_i8(cif, node, CANMAT_402_OBJ_POSITION_NOTATION_INDEX, val, err); }
#define CANMAT_402_OBJ_POSITION_DIMENSION_INDEX (canmat_dict402.obj + 361)
static inline canmat_status_t canmat_402_ul_position_dimension_index (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_POSITION_DIMENSION_INDEX, val, err); }
static inline canmat_status_t canmat_402_dl_position_dimension_index (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_POSITION_DIMENSION_INDEX, val, err); }
#define CANMAT_402_OBJ_VELOCITY_NOTATION_INDEX (canmat_dict402.obj + 362)
static inline canmat_status_t canmat_402_ul_velocity_notation_index (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER8 *val, uint32_t *err)
{ return canmat_obj_ul_i8(cif, node, CANMAT_402_OBJ_VELOCITY_NOTATION_INDEX, val, err); }
static inline canmat_status_t canmat_402_dl_velocity_notation_index (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER8 val, uint32_t *err)
{ return canmat_obj_dl_i8(cif, node, CANMAT_402_OBJ_VELOCITY_NOTATION_INDEX, val, err); }
#define CANMAT_402_OBJ_VELOCITY_DIMENSION_INDEX (canmat_dict402.obj + 363)
static inline canmat_status_t canmat_402_ul_velocity_dimension_index (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_VELOCITY_DIMENSION_INDEX, val, err); }
static inline canmat_status_t canmat_402_dl_velocity_dimension_index (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_VELOCITY_DIMENSION_INDEX, val, err); }
#define CANMAT_402_OBJ_ACCELERATION_NOTATION_INDEX (canmat_dict402.obj + 364)
static inline canmat_status_t canmat_402_ul_acceleration_notation_index (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER8 *val, uint32_t *err)
{ return canmat_obj_ul_i8(cif, node, CANMAT_402_OBJ_ACCELERATION_NOTATION_INDEX, val, err); }
static inline canmat_status_t canmat_402_dl_acceleration_notation_index (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER8 val, uint32_t *err)
{ return canmat_obj_dl_i8(cif, node, CANMAT_402_OBJ_ACCELERATION_NOTATION_INDEX, val, err); }
#define CANMAT_402_OBJ_ACCELERATION_DIMENSION_INDEX (canmat_dict402.obj + 365)
static inline canmat_status_t canmat_402_ul_acceleration_dimension_index (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_ACCELERATION_DIMENSION_INDEX, val, err); }
static inline canmat_status_t canmat_402_dl_acceleration_dimension_index (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_ACCELERATION_DIMENSION_INDEX, val, err); }
#define CANMAT_402_OBJ_POSITION_ENCODER_RESOLUTION_SUB_NUMBER_OF_ENTRIES (canmat_dict402.obj + 366)
static inline canmat_status_t canmat_402_ul_position_encoder_resolution_sub_number_of_entries (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_POSITION_ENCODER_RESOLUTION_SUB_NUMBER_OF_ENTRIES, val, err); }
static inline canmat_status_t canmat_402_dl_position_encoder_resolution_sub_number_of_entries (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_POSITION_ENCODER_RESOLUTION_SUB_NUMBER_OF_ENTRIES, val, err); }
#define CANMAT_402_OBJ_POSITION_ENCODER_RESOLUTION (canmat_dict402.obj + 367)
#define CANMAT_402_OBJ_POSITION_ENCODER_RESOLUTION_SUB_ENCODER_INCREMENTS (canmat_dict402.obj + 368)
static inline canmat_status_t canmat_402_ul_position_encoder_resolution_sub_encoder_increments (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_POSITION_ENCODER_RESOLUTION_SUB_ENCODER_INCREMENTS, val, err); }
static inline canmat_status_t canmat_402_dl_position_encoder_resolution_sub_encoder_increments (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_POSITION_ENCODER_RESOLUTION_SUB_ENCODER_INCREMENTS, val, err); }
#define CANMAT_402_OBJ_POSITION_ENCODER_RESOLUTION_SUB_MOTOR_REVOLUTIONS (canmat_dict402.obj + 369)
static inline canmat_status_t canmat_402_ul_position_encoder_resolution_sub_motor_revolutions (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_POSITION_ENCODER_RESOLUTION_SUB_MOTOR_REVOLUTIONS, val, err); }
static inline canmat_status_t canmat_402_dl_position_encoder_resolution_sub_motor_revolutions (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_POSITION_ENCODER_RESOLUTION_SUB_MOTOR_REVOLUTIONS, val, err); }
#define CANMAT_402_OBJ_VELOCITY_ENCODER_RESOLUTION (canmat_dict402.obj + 370)
#define CANMAT_402_OBJ_VELOCITY_ENCODER_RESOLUTION_SUB_NUMBER_OF_ENTRIES (canmat_dict402.obj + 371)
static inline canmat_status_t canmat_402_ul_velocity_encoder_resolution_sub_number_of_entries (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_VELOCITY_ENCODER_RESOLUTION_SUB_NUMBER_OF_ENTRIES, val, err); }
static inline canmat_status_t canmat_402_dl_velocity_encoder_resolution_sub_number_of_entries (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_VELOCITY_ENCODER_RESOLUTION_SUB_NUMBER_OF_ENTRIES, val, err); }
#define CANMAT_402_OBJ_VELOCITY_ENCODER_RESOLUTION_SUB_ENCODER_INCREMENTS_PER_SECOND (canmat_dict402.obj + 372)
static inline canmat_status_t canmat_402_ul_velocity_encoder_resolution_sub_encoder_increments_per_second (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_VELOCITY_ENCODER_RESOLUTION_SUB_ENCODER_INCREMENTS_PER_SECOND, val, err); }
static inline canmat_status_t canmat_402_dl_velocity_encoder_resolution_sub_encoder_increments_per_second (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_VELOCITY_ENCODER_RESOLUTION_SUB_ENCODER_INCREMENTS_PER_SECOND, val, err); }
#define CANMAT_402_OBJ_VELOCITY_ENCODER_RESOLUTION_SUB_MOTOR_REVOLUTIONS_PER_SECOND (canmat_dict402.obj + 373)
static inline canmat_status_t canmat_402_ul_velocity_encoder_resolution_sub_motor_revolutions_per_second (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_VELOCITY_ENCODER_RESOLUTION_SUB_MOTOR_REVOLUTIONS_PER_SECOND, val, err); }
static inline canmat_status_t canmat_402_dl_velocity_encoder_resolution_sub_motor_revolutions_per_second (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_VELOCITY_ENCODER_RESOLUTION_SUB_MOTOR_REVOLUTIONS_PER_SECOND, val, err); }
#define CANMAT_402_OBJ_GEAR_RATIO (canmat_dict402.obj + 374)
#define CANMAT_402_OBJ_GEAR_RATIO_SUB_NUMBER_OF_ENTRIES (canmat_dict402.obj + 375)
static inline canmat_status_t canmat_402_ul_gear_ratio_sub_number_of_entries (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_GEAR_RATIO_SUB_NUMBER_OF_ENTRIES, val, err); }
static inline canmat_status_t canmat_402_dl_gear_ratio_sub_number_of_entries (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_GEAR_RATIO_SUB_NUMBER_OF_ENTRIES, val, err); }
#define CANMAT_402_OBJ_GEAR_RATIO_SUB_MOTOR_REVOLUTIONS (canmat_dict402.obj + 376)
static inline canmat_status_t canmat_402_ul_gear_ratio_sub_motor_revolutions (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_GEAR_RATIO_SUB_MOTOR_REVOLUTIONS, val, err); }
static inline canmat_status_t canmat_402_dl_gear_ratio_sub_motor_revolutions (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_GEAR_RATIO_SUB_MOTOR_REVOLUTIONS, val, err); }
#define CANMAT_402_OBJ_GEAR_RATIO_SUB_SHAFT_REVOLUTIONS (canmat_dict402.obj + 377)
static inline canmat_status_t canmat_402_ul_gear_ratio_sub_shaft_revolutions (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_GEAR_RATIO_SUB_SHAFT_REVOLUTIONS, val, err); }
static inline canmat_status_t canmat_402_dl_gear_ratio_sub_shaft_revolutions (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_GEAR_RATIO_SUB_SHAFT_REVOLUTIONS, val, err); }
#define CANMAT_402_OBJ_FEED_CONSTANT (canmat_dict402.obj + 378)
#define CANMAT_402_OBJ_FEED_CONSTANT_SUB_NUMBER_OF_ENTRIES (canmat_dict402.obj + 379)
static inline canmat_status_t canmat_402_ul_feed_constant_sub_number_of_entries (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_FEED_CONSTANT_SUB_NUMBER_OF_ENTRIES, val, err); }
static inline canmat_status_t canmat_402_dl_feed_constant_sub_number_of_entries (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_FEED_CONSTANT_SUB_NUMBER_OF_ENTRIES, val, err); }
#define CANMAT_402_OBJ_FEED_CONSTANT_SUB_FEED (canmat_dict402.obj + 380)
static inline canmat_status_t canmat_402_ul_feed_constant_sub_feed (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_FEED_CONSTANT_SUB_FEED, val, err); }
static inline canmat_status_t canmat_402_dl_feed_constant_sub_feed (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_FEED_CONSTANT_SUB_FEED, val, err); }
#define CANMAT_402_OBJ_FEED_CONSTANT_SUB_SHAFT_REVOLUTIONS (canmat_dict402.obj + 381)
static inline canmat_status_t canmat_402_ul_feed_constant_sub_shaft_revolutions (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_FEED_CONSTANT_SUB_SHAFT_REVOLUTIONS, val, err); }
static inline canmat_status_t canmat_402_dl_feed_constant_sub_shaft_revolutions (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_FEED_CONSTANT_SUB_SHAFT_REVOLUTIONS, val, err); }
#define CANMAT_402_OBJ_POSITION_FACTOR (canmat_dict402.obj + 382)
#define CANMAT_402_OBJ_POSITION_FACTOR_SUB_NUMBER_OF_ENTRIES (canmat_dict402.obj + 383)
static inline canmat_status_t canmat_402_ul_position_factor_sub_number_of_entries (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_POSITION_FACTOR_SUB_NUMBER_OF_ENTRIES, val, err); }
static inline canmat_status_t canmat_402_dl_position_factor_sub_number_of_entries (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_POSITION_FACTOR_SUB_NUMBER_OF_ENTRIES, val, err); }
#define CANMAT_402_OBJ_POSITION_FACTOR_SUB_NUMERATOR (canmat_dict402.obj + 384)
static inline canmat_status_t canmat_402_ul_position_factor_sub_numerator (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_POSITION_FACTOR_SUB_NUMERATOR, val, err); }
static inline canmat_status_t canmat_402_dl_position_factor_sub_numerator (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_POSITION_FACTOR_SUB_NUMERATOR, val, err); }
#define CANMAT_402_OBJ_POSITION_FACTOR_SUB_FEED_CONSTANT (canmat_dict402.obj + 385)
static inline canmat_status_t canmat_402_ul_position_factor_sub_feed_constant (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_POSITION_FACTOR_SUB_FEED_CONSTANT, val, err); }
static inline canmat_status_t canmat_402_dl_position_factor_sub_feed_constant (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_POSITION_FACTOR_SUB_FEED_CONSTANT, val, err); }
#define CANMAT_402_OBJ_VELOCITY_ENCODER_FACTOR (canmat_dict402.obj + 386)
#define CANMAT_402_OBJ_VELOCITY_ENCODER_FACTOR_SUB_NUMBER_OF_ENTRIES (canmat_dict402.obj + 387)
static inline canmat_status_t canmat_402_ul_velocity_encoder_factor_sub_number_of_entries (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_VELOCITY_ENCODER_FACTOR_SUB_NUMBER_OF_ENTRIES, val, err); }
static inline canmat_status_t canmat_402_dl_velocity_encoder_factor_sub_number_of_entries (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_VELOCITY_ENCODER_FACTOR_SUB_NUMBER_OF_ENTRIES, val, err); }
#define CANMAT_402_OBJ_VELOCITY_ENCODER_FACTOR_SUB_NUMERATOR (canmat_dict402.obj + 388)
static inline canmat_status_t canmat_402_ul_velocity_encoder_factor_sub_numerator (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_VELOCITY_ENCODER_FACTOR_SUB_NUMERATOR, val, err); }
static inline canmat_status_t canmat_402_dl_velocity_encoder_factor_sub_numerator (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_VELOCITY_ENCODER_FACTOR_SUB_NUMERATOR, val, err); }
#define CANMAT_402_OBJ_VELOCITY_ENCODER_FACTOR_SUB_DIVISOR (canmat_dict402.obj + 389)
static inline canmat_status_t canmat_402_ul_velocity_encoder_factor_sub_divisor (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_VELOCITY_ENCODER_FACTOR_SUB_DIVISOR, val, err); }
static inline canmat_status_t canmat_402_dl_velocity_encoder_factor_sub_divisor (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_VELOCITY_ENCODER_FACTOR_SUB_DIVISOR, val, err); }
#define CANMAT_402_OBJ_VELOCITY_FACTOR_1 (canmat_dict402.obj + 390)
#define CANMAT_402_OBJ_VELOCITY_FACTOR_1_SUB_NUMBER_OF_ENTRIES (canmat_dict402.obj + 391)
static inline canmat_status_t canmat_402_ul_velocity_factor_1_sub_number_of_entries (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_VELOCITY_FACTOR_1_SUB_NUMBER_OF_ENTRIES, val, err); }
static inline canmat_status_t canmat_402_dl_velocity_factor_1_sub_number_of_entries (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_VELOCITY_FACTOR_1_SUB_NUMBER_OF_ENTRIES, val, err); }
#define CANMAT_402_OBJ_VELOCITY_FACTOR_1_SUB_NUMERATOR (canmat_dict402.obj + 392)
static inline canmat_status_t canmat_402_ul_velocity_factor_1_sub_numerator (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_VELOCITY_FACTOR_1_SUB_NUMERATOR, val, err); }
static inline canmat_status_t canmat_402_dl_velocity_factor_1_sub_numerator (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_VELOCITY_FACTOR_1_SUB_NUMERATOR, val, err); }
#define CANMAT_402_OBJ_VELOCITY_FACTOR_1_SUB_DIVISOR (canmat_dict402.obj + 393)
static inline canmat_status_t canmat_402_ul_velocity_factor_1_sub_divisor (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_VELOCITY_FACTOR_1_SUB_DIVISOR, val, err); }
static inline canmat_status_t canmat_402_dl_velocity_factor_1_sub_divisor (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_VELOCITY_FACTOR_1_SUB_DIVISOR, val, err); }
#define CANMAT_402_OBJ_VELOCITY_FACTOR_2 (canmat_dict402.obj + 394)
#define CANMAT_402_OBJ_VELOCITY_FACTOR_2_SUB_NUMBER_OF_ENTRIES (canmat_dict402.obj + 395)
static inline canmat_status_t canmat_402_ul_velocity_factor_2_sub_number_of_entries (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_VELOCITY_FACTOR_2_SUB_NUMBER_OF_ENTRIES, val, err); }
static inline canmat_status_t canmat_402_dl_velocity_factor_2_sub_number_of_entries (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_VELOCITY_FACTOR_2_SUB_NUMBER_OF_ENTRIES, val, err); }
#define CANMAT_402_OBJ_VELOCITY_FACTOR_2_SUB_NUMERATOR (canmat_dict402.obj + 396)
static inline canmat_status_t canmat_402_ul_velocity_factor_2_sub_numerator (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_VELOCITY_FACTOR_2_SUB_NUMERATOR, val, err); }
static inline canmat_status_t canmat_402_dl_velocity_factor_2_sub_numerator (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_VELOCITY_FACTOR_2_SUB_NUMERATOR, val, err); }
#define CANMAT_402_OBJ_VELOCITY_FACTOR_2_SUB_DIVISOR (canmat_dict402.obj + 397)
static inline canmat_status_t canmat_402_ul_velocity_factor_2_sub_divisor (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_VELOCITY_FACTOR_2_SUB_DIVISOR, val, err); }
static inline canmat_status_t canmat_402_dl_velocity_factor_2_sub_divisor (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_VELOCITY_FACTOR_2_SUB_DIVISOR, val, err); }
#define CANMAT_402_OBJ_ACCELERATION_FACTOR (canmat_dict402.obj + 398)
#define CANMAT_402_OBJ_ACCELERATION_FACTOR_SUB_NUMBER_OF_ENTRIES (canmat_dict402.obj + 399)
static inline canmat_status_t canmat_402_ul_acceleration_factor_sub_number_of_entries (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_ACCELERATION_FACTOR_SUB_NUMBER_OF_ENTRIES, val, err); }
static inline canmat_status_t canmat_402_dl_acceleration_factor_sub_number_of_entries (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_ACCELERATION_FACTOR_SUB_NUMBER_OF_ENTRIES, val, err); }
#define CANMAT_402_OBJ_ACCELERATION_FACTOR_SUB_NUMERATOR (canmat_dict402.obj + 400)
static inline canmat_status_t canmat_402_ul_acceleration_factor_sub_numerator (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_ACCELERATION_FACTOR_SUB_NUMERATOR, val, err); }
static inline canmat_status_t canmat_402_dl_acceleration_factor_sub_numerator (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_ACCELERATION_FACTOR_SUB_NUMERATOR, val, err); }
#define CANMAT_402_OBJ_ACCELERATION_FACTOR_SUB_DIVISOR (canmat_dict402.obj + 401)
static inline canmat_status_t canmat_402_ul_acceleration_factor_sub_divisor (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_ACCELERATION_FACTOR_SUB_DIVISOR, val, err); }
static inline canmat_status_t canmat_402_dl_acceleration_factor_sub_divisor (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_ACCELERATION_FACTOR_SUB_DIVISOR, val, err); }
#define CANMAT_402_OBJ_MAX_DECELERATION (canmat_dict402.obj + 402)
static inline canmat_status_t canmat_402_ul_max_deceleration (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_MAX_DECELERATION, val, err); }
static inline canmat_status_t canmat_402_dl_max_deceleration (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_MAX_DECELERATION, val, err); }
#define CANMAT_402_OBJ_DIGITAL_INPUTS (canmat_dict402.obj + 403)
#define CANMAT_402_OBJ_DIGITAL_OUTPUTS (canmat_dict402.obj + 404)
#define CANMAT_402_OBJ_DIGITAL_OUTPUTS_SUB_NUMBER_OF_ENTRIES (canmat_dict402.obj + 405)
static inline canmat_status_t canmat_402_ul_digital_outputs_sub_number_of_entries (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_DIGITAL_OUTPUTS_SUB_NUMBER_OF_ENTRIES, val, err); }
static inline canmat_status_t canmat_402_dl_digital_outputs_sub_number_of_entries (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_DIGITAL_OUTPUTS_SUB_NUMBER_OF_ENTRIES, val, err); }
#define CANMAT_402_OBJ_DIGITAL_OUTPUTS_SUB_BIT_MASK (canmat_dict402.obj + 406)
static inline canmat_status_t canmat_402_ul_digital_outputs_sub_bit_mask (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_DIGITAL_OUTPUTS_SUB_BIT_MASK, val, err); }
static inline canmat_status_t canmat_402_dl_digital_outputs_sub_bit_mask (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_DIGITAL_OUTPUTS_SUB_BIT_MASK, val, err); }
#define CANMAT_402_OBJ_TARGET_VELOCITY (canmat_dict402.obj + 407)
static inline canmat_status_t canmat_402_ul_target_velocity (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER32 *val, uint32_t *err)
{ return canmat_obj_ul_i32(cif, node, CANMAT_402_OBJ_TARGET_VELOCITY, val, err); }
static inline canmat_status_t canmat_402_dl_target_velocity (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_INTEGER32 val, uint32_t *err)
{ return canmat_obj_dl_i32(cif, node, CANMAT_402_OBJ_TARGET_VELOCITY, val, err); }
#define CANMAT_402_OBJ_MOTOR_TYPE (canmat_dict402.obj + 408)
static inline canmat_status_t canmat_402_ul_motor_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 *val, uint32_t *err)
{ return canmat_obj_ul_u16(cif, node, CANMAT_402_OBJ_MOTOR_TYPE, val, err); }
static inline canmat_status_t canmat_402_dl_motor_type (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED16 val, uint32_t *err)
{ return canmat_obj_dl_u16(cif, node, CANMAT_402_OBJ_MOTOR_TYPE, val, err); }
#define CANMAT_402_OBJ_MOTOR_CATALOG_NUMBER (canmat_dict402.obj + 409)
#define CANMAT_402_OBJ_MOTOR_MANUFACTURER (canmat_dict402.obj + 410)
#define CANMAT_402_OBJ_HTTP_MOTOR_CATALOG_ADDRESS (canmat_dict402.obj + 411)
#define CANMAT_402_OBJ_MOTOR_CALIBRATE_DATE (canmat_dict402.obj + 412)
#define CANMAT_402_OBJ_MOTOR_DATA_SUB_NUMBER_OF_ENTRIES (canmat_dict402.obj + 413)
static inline canmat_status_t canmat_402_ul_motor_data_sub_number_of_entries (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_MOTOR_DATA_SUB_NUMBER_OF_ENTRIES, val, err); }
static inline canmat_status_t canmat_402_dl_motor_data_sub_number_of_entries (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_MOTOR_DATA_SUB_NUMBER_OF_ENTRIES, val, err); }
#define CANMAT_402_OBJ_MOTOR_DATA (canmat_dict402.obj + 414)
#define CANMAT_402_OBJ_SUPPORTED_DRIVE_MODES (canmat_dict402.obj + 415)
static inline canmat_status_t canmat_402_ul_supported_drive_modes (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 *val, uint32_t *err)
{ return canmat_obj_ul_u32(cif, node, CANMAT_402_OBJ_SUPPORTED_DRIVE_MODES, val, err); }
static inline canmat_status_t canmat_402_dl_supported_drive_modes (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED32 val, uint32_t *err)
{ return canmat_obj_dl_u32(cif, node, CANMAT_402_OBJ_SUPPORTED_DRIVE_MODES, val, err); }
#define CANMAT_402_OBJ_DRIVE_CATALOG_NUMBER (canmat_dict402.obj + 416)
#define CANMAT_402_OBJ_DRIVE_MANUFACTURER (canmat_dict402.obj + 417)
#define CANMAT_402_OBJ_HTTP_DRIVE_CATALOG_ADDRESS (canmat_dict402.obj + 418)
#define CANMAT_402_OBJ_DRIVE_DATA_SUB_NUMBER_OF_ENTRIES (canmat_dict402.obj + 419)
static inline canmat_status_t canmat_402_ul_drive_data_sub_number_of_entries (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 *val, uint32_t *err)
{ return canmat_obj_ul_u8(cif, node, CANMAT_402_OBJ_DRIVE_DATA_SUB_NUMBER_OF_ENTRIES, val, err); }
static inline canmat_status_t canmat_402_dl_drive_data_sub_number_of_entries (
	struct canmat_iface *cif, uint8_t node,
	CANMAT_UNSIGNED8 val, uint32_t *err)
{ return canmat_obj_dl_u8(cif, node, CANMAT_402_OBJ_DRIVE_DATA_SUB_NUMBER_OF_ENTRIES, val, err); }
#define CANMAT_402_OBJ_DRIVE_DATA (canmat_dict402.obj + 420)
