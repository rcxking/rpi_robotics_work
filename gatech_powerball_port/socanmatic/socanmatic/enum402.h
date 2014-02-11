enum canmat_402_abort_conn {
	 CANMAT_402_ABORT_CONN_NO_ACTION = 0, /* no_action */
	 CANMAT_402_ABORT_CONN_MALFUNCTION = 1, /* malfunction */
	 CANMAT_402_ABORT_CONN_DISABLE_VOLTAGE = 2, /* disable_voltage */
	 CANMAT_402_ABORT_CONN_QUICK_STOP = 3, /* quick_stop */
};
enum canmat_402_halt_option {
	 CANMAT_402_HALT_OPTION_DISABLE = 0, /* disable */
	 CANMAT_402_HALT_OPTION_SLOW_DOWN_RAMP = 1, /* slow_down_ramp */
	 CANMAT_402_HALT_OPTION_QUICK_STOP = 2, /* quick_stop */
	 CANMAT_402_HALT_OPTION_CURRENT_LIMIT = 3, /* current_limit */
	 CANMAT_402_HALT_OPTION_VOLTAGE_LIMIT = 4, /* voltage_limit */
};
enum canmat_402_motion_profile_type {
	 CANMAT_402_MOTION_PROFILE_TYPE_LINEAR_RAMP = 0, /* Trapezoidal profile */
	 CANMAT_402_MOTION_PROFILE_TYPE_SIN2_RAMP = 1, /* sin2_ramp */
};
enum canmat_402_fault_reaction {
	 CANMAT_402_FAULT_REACTION_DISABLE = 0, /* disable */
	 CANMAT_402_FAULT_REACTION_SLOW_DOWN_RAMP = 1, /* slow_down_ramp */
	 CANMAT_402_FAULT_REACTION_QUICK_STOP_RAMP = 2, /* quick_stop_ramp */
	 CANMAT_402_FAULT_REACTION_CURRENT_LIMIT = 3, /* current_limit */
	 CANMAT_402_FAULT_REACTION_VOLTAGE_LIMIT = 4, /* voltage_limit */
};
enum canmat_402_digital_input_mask {
	 CANMAT_402_DIGITAL_INPUT_MASK_NEG_LIMIT_SW = 1 << 0, /* neg_limit_sw */
	 CANMAT_402_DIGITAL_INPUT_MASK_POS_LIMIT_SW = 1 << 1, /* pos_limit_sw */
	 CANMAT_402_DIGITAL_INPUT_MASK_HOME_SW = 1 << 2, /* home_sw */
	 CANMAT_402_DIGITAL_INPUT_MASK_INTERLOCK = 1 << 3, /* interlock */
};
enum canmat_402_supported_drive_modes_mask {
	 CANMAT_402_SUPPORTED_DRIVE_MODES_MASK_PP = 1 << 0, /* Profile Position */
	 CANMAT_402_SUPPORTED_DRIVE_MODES_MASK_VL = 1 << 1, /* Velocity */
	 CANMAT_402_SUPPORTED_DRIVE_MODES_MASK_PV = 1 << 2, /* Profile Velocity */
	 CANMAT_402_SUPPORTED_DRIVE_MODES_MASK_TQ = 1 << 3, /* Torque */
	 CANMAT_402_SUPPORTED_DRIVE_MODES_MASK_HM = 1 << 5, /* Homing */
	 CANMAT_402_SUPPORTED_DRIVE_MODES_MASK_IP = 1 << 6, /* Interpolated position */
};
enum canmat_402_statmask {
	 CANMAT_402_STATMASK_READY_TO_SWITCH_ON = 1 <<  0, /* ready_to_switch_on */
	 CANMAT_402_STATMASK_SWITCHED_ON = 1 <<  1, /* switched_on */
	 CANMAT_402_STATMASK_OP_ENABLED = 1 <<  2, /* op_enabled */
	 CANMAT_402_STATMASK_FAULT = 1 <<  3, /* fault */
	 CANMAT_402_STATMASK_VOLTAGE_ENABLED = 1 <<  4, /* voltage_enabled */
	 CANMAT_402_STATMASK_QUICK_STOP = 1 <<  5, /* quick_stop */
	 CANMAT_402_STATMASK_SWITCH_ON_DISABLED = 1 <<  6, /* switch_on_disabled */
	 CANMAT_402_STATMASK_WARNING = 1 <<  7, /* warning */
	 CANMAT_402_STATMASK_MFR_SPECIFIC0 = 1 <<  8, /* mfr_specific0 */
	 CANMAT_402_STATMASK_REMOTE = 1 <<  9, /* remote */
	 CANMAT_402_STATMASK_TARGET_REACHED = 1 << 10, /* target_reached */
	 CANMAT_402_STATMASK_INTERNAL_LIMIT_ACTIVE = 1 << 11, /* internal_limit_active */
	 CANMAT_402_STATMASK_OP_MODE_SPECIFIC0 = 1 << 12, /* op_mode_specific0 */
	 CANMAT_402_STATMASK_OP_MODE_SPECIFIC1 = 1 << 13, /* op_mode_specific1 */
	 CANMAT_402_STATMASK_MFR_SPECIFIC1 = 1 << 14, /* mfr_specific1 */
	 CANMAT_402_STATMASK_MFR_SPECIFIC2 = 1 << 15, /* mfr_specific2 */
};
enum canmat_402_motor_type {
	 CANMAT_402_MOTOR_TYPE_NON_STANDARD = 0x0000, /* non_standard */
	 CANMAT_402_MOTOR_TYPE_PHASE_MODULATED_DC = 0x0001, /* phase_modulated_dc */
	 CANMAT_402_MOTOR_TYPE_FREQ_CONTROLLED_DC = 0x0002, /* freq_controlled_dc */
	 CANMAT_402_MOTOR_TYPE_PM_SYNCHRONOUS = 0x0003, /* pm_synchronous */
	 CANMAT_402_MOTOR_TYPE_FC_SYNCHRONOUS = 0x0004, /* fc_synchronous */
	 CANMAT_402_MOTOR_TYPE_SWITCHED_RELUCTANCE = 0x0005, /* switched_reluctance */
	 CANMAT_402_MOTOR_TYPE_WOUND_ROTOR = 0x0006, /* wound_rotor */
	 CANMAT_402_MOTOR_TYPE_SQUIRREL_CAGE = 0x0007, /* squirrel_cage */
	 CANMAT_402_MOTOR_TYPE_STEPPER = 0x0008, /* stepper */
	 CANMAT_402_MOTOR_TYPE_MICRO_STEP_STEPPER = 0x0009, /* micro_step_stepper */
	 CANMAT_402_MOTOR_TYPE_SINUSOIDAL_PM_BL = 0x000A, /* sinusoidal_pm_bl */
	 CANMAT_402_MOTOR_TYPE_TRAPEZOIDAL_PM_BL = 0x000B, /* trapezoidal_pm_bl */
};
enum canmat_402_op_mode {
	 CANMAT_402_OP_MODE_PROFILE_POSITION = 0x1, /* profile_position */
	 CANMAT_402_OP_MODE_VELOCITY = 0x2, /* velocity */
	 CANMAT_402_OP_MODE_PROFILE_VELOCITY = 0x3, /* profile_velocity */
	 CANMAT_402_OP_MODE_TORQUE = 0x4, /* torque */
	 CANMAT_402_OP_MODE_RESERVED1 = 0x5, /* reserved1 */
	 CANMAT_402_OP_MODE_HOMING = 0x6, /* homing */
	 CANMAT_402_OP_MODE_PVT = 0x7, /* Interpolated Position */
	 CANMAT_402_OP_MODE_CYCLIC_SYNC_POSITION = 0x8, /* cyclic_sync_position */
	 CANMAT_402_OP_MODE_CYCLIC_SYNC_VELOCITY = 0x9, /* cyclic_sync_velocity */
	 CANMAT_402_OP_MODE_CYCLIC_SYNC_TORQUE = 0x9, /* cyclic_sync_torque */
	 CANMAT_402_OP_MODE_CUSTOM = 0xFF, /* custom */
};
enum canmat_402_ctrlmask {
	 CANMAT_402_CTRLMASK_SWITCH_ON = 1 <<  0, /* switch_on */
	 CANMAT_402_CTRLMASK_ENABLE_VOLTAGE = 1 <<  1, /* enable_voltage */
	 CANMAT_402_CTRLMASK_QUICK_STOP = 1 <<  2, /* quick_stop */
	 CANMAT_402_CTRLMASK_ENABLE_OPERATION = 1 <<  3, /* enable_operation */
	 CANMAT_402_CTRLMASK_OP_MODE_SPECIFIC0 = 1 <<  4, /* op_mode_specific0 */
	 CANMAT_402_CTRLMASK_OP_MODE_SPECIFIC1 = 1 <<  5, /* op_mode_specific1 */
	 CANMAT_402_CTRLMASK_OP_MODE_SPECIFIC2 = 1 <<  6, /* op_mode_specific2 */
	 CANMAT_402_CTRLMASK_RESET_FAULT = 1 <<  7, /* reset_fault */
	 CANMAT_402_CTRLMASK_HALT = 1 <<  8, /* halt */
	 CANMAT_402_CTRLMASK_RESERVED0 = 1 <<  9, /* reserved0 */
	 CANMAT_402_CTRLMASK_RESERVED1 = 1 << 10, /* reserved1 */
	 CANMAT_402_CTRLMASK_MFR_SPECIFIC0 = 1 << 11, /* mfr_specific0 */
	 CANMAT_402_CTRLMASK_MFR_SPECIFIC1 = 1 << 12, /* mfr_specific1 */
	 CANMAT_402_CTRLMASK_MFR_SPECIFIC2 = 1 << 13, /* mfr_specific2 */
	 CANMAT_402_CTRLMASK_MFR_SPECIFIC3 = 1 << 14, /* mfr_specific3 */
	 CANMAT_402_CTRLMASK_MFR_SPECIFIC4 = 1 << 15, /* mfr_specific4 */
};
