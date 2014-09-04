#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

MODULE_INFO(vermagic, VERMAGIC_STRING);

struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

static const struct modversion_info ____versions[]
__used
__attribute__((section("__versions"))) = {
	{ 0x5358b4ed, "module_layout" },
	{ 0x6bc3fbc0, "__unregister_chrdev" },
	{ 0x1fedf0f4, "__request_region" },
	{ 0xfe1c648f, "kmalloc_caches" },
	{ 0xd2b09ce5, "__kmalloc" },
	{ 0x69a358a6, "iomem_resource" },
	{ 0x754d539c, "strlen" },
	{ 0xe4ee7cc4, "dev_set_drvdata" },
	{ 0x92c0f5fe, "usb_init_urb" },
	{ 0xc8b57c27, "autoremove_wake_function" },
	{ 0xbbc5a9ad, "usb_reset_endpoint" },
	{ 0x1a2efb69, "pci_disable_device" },
	{ 0x4fed73dc, "i2c_transfer" },
	{ 0x20000329, "simple_strtoul" },
	{ 0x6b06fdce, "delayed_work_timer_fn" },
	{ 0x37dd7d8e, "usb_kill_urb" },
	{ 0xf5c9e752, "usb_deregister_dev" },
	{ 0x2caa7919, "remove_proc_entry" },
	{ 0xeb52310b, "device_destroy" },
	{ 0xaaa5cdef, "usb_reset_configuration" },
	{ 0xd6978bbb, "parport_find_base" },
	{ 0xc58eef49, "__register_chrdev" },
	{ 0x11f6ea07, "driver_for_each_device" },
	{ 0xeae3dfd6, "__const_udelay" },
	{ 0x593a99b, "init_timer_key" },
	{ 0xd4711236, "cancel_delayed_work_sync" },
	{ 0x181af9d0, "mutex_unlock" },
	{ 0xb84e6a2d, "pci_bus_write_config_word" },
	{ 0x91715312, "sprintf" },
	{ 0x7d11c268, "jiffies" },
	{ 0xf432dd3d, "__init_waitqueue_head" },
	{ 0x4f8b5ddb, "_copy_to_user" },
	{ 0x35b6b772, "param_ops_charp" },
	{ 0xfb578fc5, "memset" },
	{ 0xff7559e4, "ioport_resource" },
	{ 0x8f64aa4, "_raw_spin_unlock_irqrestore" },
	{ 0x353d11fe, "current_task" },
	{ 0x2e2b40d2, "strncat" },
	{ 0x37befc70, "jiffies_to_msecs" },
	{ 0xcf0b783, "usb_deregister" },
	{ 0xd74c8f46, "__mutex_init" },
	{ 0x27e1a049, "printk" },
	{ 0x97459e3c, "parport_unregister_device" },
	{ 0x415c63de, "usb_set_interface" },
	{ 0xa1c76e0a, "_cond_resched" },
	{ 0x9166fada, "strncpy" },
	{ 0xb5ebeb1d, "usb_register_dev" },
	{ 0xacdbfdc9, "usb_control_msg" },
	{ 0xb264abed, "mutex_lock" },
	{ 0xf1fb9644, "device_create" },
	{ 0xbbe68f24, "parport_claim" },
	{ 0x2072ee9b, "request_threaded_irq" },
	{ 0x2600f4fb, "parport_release" },
	{ 0xbd745ba6, "i2c_del_adapter" },
	{ 0xa8a6f639, "__check_region" },
	{ 0xca333c75, "usb_submit_urb" },
	{ 0x42c8de35, "ioremap_nocache" },
	{ 0x768adba7, "pci_bus_read_config_word" },
	{ 0xf0fdf6cb, "__stack_chk_fail" },
	{ 0x2ba35aff, "usb_reset_device" },
	{ 0x1f822217, "schedule_delayed_work" },
	{ 0x498cfac0, "parport_register_device" },
	{ 0x1000e51, "schedule" },
	{ 0xd62c833f, "schedule_timeout" },
	{ 0xa202a8e5, "kmalloc_order_trace" },
	{ 0xfedd76cb, "usb_clear_halt" },
	{ 0x1ebaf23a, "create_proc_entry" },
	{ 0xbdfb6dbb, "__fentry__" },
	{ 0x7c61340c, "__release_region" },
	{ 0xdacbdfab, "pci_unregister_driver" },
	{ 0xf2b09e86, "kmem_cache_alloc_trace" },
	{ 0x9327f5ce, "_raw_spin_lock_irqsave" },
	{ 0xadb5559d, "param_ops_byte" },
	{ 0xcf21d241, "__wake_up" },
	{ 0xf6ebc03b, "net_ratelimit" },
	{ 0x4f68e5c9, "do_gettimeofday" },
	{ 0x37a0cba, "kfree" },
	{ 0x69acdf38, "memcpy" },
	{ 0x5c8b5ce8, "prepare_to_wait" },
	{ 0x4845c423, "param_array_ops" },
	{ 0xedc03953, "iounmap" },
	{ 0x1ac87a12, "__pci_register_driver" },
	{ 0xf969cfd6, "usb_register_driver" },
	{ 0xc40fae79, "class_destroy" },
	{ 0xfa66f77c, "finish_wait" },
	{ 0xa0518d1d, "i2c_bit_add_bus" },
	{ 0xb0e602eb, "memmove" },
	{ 0x487d9343, "param_ops_ushort" },
	{ 0xb6ec528d, "pci_enable_device" },
	{ 0x4f6b400b, "_copy_from_user" },
	{ 0xd7b54629, "__class_create" },
	{ 0x8a8fb613, "dev_get_drvdata" },
	{ 0xf20dabd8, "free_irq" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=parport,i2c-algo-bit";

MODULE_ALIAS("usb:v0C72p000Cd*dc*dsc*dp*ic*isc*ip*in*");
MODULE_ALIAS("usb:v0C72p000Dd*dc*dsc*dp*ic*isc*ip*in*");
MODULE_ALIAS("pci:v0000001Cd00000001sv*sd*bc*sc*i*");
MODULE_ALIAS("pci:v0000001Cd00000003sv*sd*bc*sc*i*");
MODULE_ALIAS("pci:v0000001Cd00000004sv*sd*bc*sc*i*");
MODULE_ALIAS("pci:v0000001Cd00000005sv*sd*bc*sc*i*");
MODULE_ALIAS("pci:v0000001Cd00000006sv*sd*bc*sc*i*");
MODULE_ALIAS("pci:v0000001Cd00000007sv*sd*bc*sc*i*");
MODULE_ALIAS("pci:v0000001Cd00000008sv*sd*bc*sc*i*");
MODULE_ALIAS("pci:v0000001Cd00000002sv*sd*bc*sc*i*");

MODULE_INFO(srcversion, "3CB4471C8250489CA2183E4");
