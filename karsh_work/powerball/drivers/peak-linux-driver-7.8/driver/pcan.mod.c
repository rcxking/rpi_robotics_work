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
	{ 0x8e452e5, "module_layout" },
	{ 0x1e17f88f, "pcmcia_dev_present" },
	{ 0x6bc3fbc0, "__unregister_chrdev" },
	{ 0x1fedf0f4, "__request_region" },
	{ 0xb1d63e0, "kmalloc_caches" },
	{ 0x12da5bb2, "__kmalloc" },
	{ 0xfe3d0cb8, "pcmcia_enable_device" },
	{ 0x69a358a6, "iomem_resource" },
	{ 0x4f73291e, "dev_set_drvdata" },
	{ 0x4100bc04, "pcmcia_register_driver" },
	{ 0x18a3d9f3, "usb_init_urb" },
	{ 0xc8b57c27, "autoremove_wake_function" },
	{ 0xabd07051, "usb_reset_endpoint" },
	{ 0x27d45aa1, "pci_disable_device" },
	{ 0x729169f5, "i2c_transfer" },
	{ 0x20000329, "simple_strtoul" },
	{ 0xe1ec36d4, "usb_kill_urb" },
	{ 0xd4e73ce8, "usb_deregister_dev" },
	{ 0x632f6752, "remove_proc_entry" },
	{ 0x2b097dfc, "device_destroy" },
	{ 0x9c4e5cb9, "usb_reset_configuration" },
	{ 0xe31c4835, "parport_find_base" },
	{ 0x3cc2254f, "__register_chrdev" },
	{ 0x3882d6f, "driver_for_each_device" },
	{ 0xeae3dfd6, "__const_udelay" },
	{ 0xfb0e29f, "init_timer_key" },
	{ 0x6baae653, "cancel_delayed_work_sync" },
	{ 0xc0653599, "pci_bus_write_config_word" },
	{ 0x91715312, "sprintf" },
	{ 0x5e5f702e, "pcmcia_request_io" },
	{ 0x7d11c268, "jiffies" },
	{ 0x68dfc59f, "__init_waitqueue_head" },
	{ 0x35b6b772, "param_ops_charp" },
	{ 0xd5f2172f, "del_timer_sync" },
	{ 0x2bc95bd4, "memset" },
	{ 0xff7559e4, "ioport_resource" },
	{ 0xf97456ea, "_raw_spin_unlock_irqrestore" },
	{ 0x692186bf, "current_task" },
	{ 0x70d1f8f3, "strncat" },
	{ 0x37befc70, "jiffies_to_msecs" },
	{ 0xcaa9007a, "usb_deregister" },
	{ 0x50eedeb8, "printk" },
	{ 0xf91afaae, "parport_unregister_device" },
	{ 0x1c1292de, "usb_set_interface" },
	{ 0xb6ed1e53, "strncpy" },
	{ 0x2f287f0d, "copy_to_user" },
	{ 0xb4390f9a, "mcount" },
	{ 0x99f12b63, "usb_register_dev" },
	{ 0x212e5c8b, "usb_control_msg" },
	{ 0x6c2e3320, "strncmp" },
	{ 0xa86a9b3, "device_create" },
	{ 0xbe2c0274, "add_timer" },
	{ 0x1c26798f, "parport_claim" },
	{ 0x2072ee9b, "request_threaded_irq" },
	{ 0x2fe9ef03, "pcmcia_loop_config" },
	{ 0x9e8d46ed, "parport_release" },
	{ 0x267ebc77, "i2c_del_adapter" },
	{ 0xa8a6f639, "__check_region" },
	{ 0xe2dc0024, "usb_submit_urb" },
	{ 0x42c8de35, "ioremap_nocache" },
	{ 0x7c216cb3, "pci_bus_read_config_word" },
	{ 0xf0fdf6cb, "__stack_chk_fail" },
	{ 0xccaed1f1, "usb_reset_device" },
	{ 0x77edf722, "schedule_delayed_work" },
	{ 0xd9cb5089, "parport_register_device" },
	{ 0x4292364c, "schedule" },
	{ 0xd62c833f, "schedule_timeout" },
	{ 0x86a4889a, "kmalloc_order_trace" },
	{ 0xb326c0ee, "usb_clear_halt" },
	{ 0xcd358c51, "create_proc_entry" },
	{ 0x7c61340c, "__release_region" },
	{ 0xc7a26c26, "pci_unregister_driver" },
	{ 0x4f31e693, "kmem_cache_alloc_trace" },
	{ 0x21fb443e, "_raw_spin_lock_irqsave" },
	{ 0xadb5559d, "param_ops_byte" },
	{ 0xe45f60d8, "__wake_up" },
	{ 0xf6ebc03b, "net_ratelimit" },
	{ 0x4f68e5c9, "do_gettimeofday" },
	{ 0x37a0cba, "kfree" },
	{ 0x2e60bace, "memcpy" },
	{ 0x622fa02a, "prepare_to_wait" },
	{ 0x4845c423, "param_array_ops" },
	{ 0xedc03953, "iounmap" },
	{ 0x1efbe939, "pcmcia_unregister_driver" },
	{ 0x4067708d, "__pci_register_driver" },
	{ 0xc20973b4, "usb_register_driver" },
	{ 0xf0673fdb, "class_destroy" },
	{ 0x75bb675a, "finish_wait" },
	{ 0x36c50bcf, "i2c_bit_add_bus" },
	{ 0x8235805b, "memmove" },
	{ 0x487d9343, "param_ops_ushort" },
	{ 0xf86bce2, "pcmcia_disable_device" },
	{ 0x27db385f, "pci_enable_device" },
	{ 0x362ef408, "_copy_from_user" },
	{ 0x5f84e71, "__class_create" },
	{ 0x56c86dc4, "dev_get_drvdata" },
	{ 0xf20dabd8, "free_irq" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=pcmcia,parport,i2c-algo-bit";

MODULE_ALIAS("usb:v0C72p000Cd*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v0C72p000Dd*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("pci:v0000001Cd00000001sv*sd*bc*sc*i*");
MODULE_ALIAS("pci:v0000001Cd00000003sv*sd*bc*sc*i*");
MODULE_ALIAS("pci:v0000001Cd00000004sv*sd*bc*sc*i*");
MODULE_ALIAS("pci:v0000001Cd00000005sv*sd*bc*sc*i*");
MODULE_ALIAS("pci:v0000001Cd00000006sv*sd*bc*sc*i*");
MODULE_ALIAS("pci:v0000001Cd00000007sv*sd*bc*sc*i*");
MODULE_ALIAS("pci:v0000001Cd00000008sv*sd*bc*sc*i*");
MODULE_ALIAS("pci:v0000001Cd00000002sv*sd*bc*sc*i*");
MODULE_ALIAS("pcmcia:m0377c0001f*fn*pfn*pa*pb*pc*pd*");

MODULE_INFO(srcversion, "4F081F646C09390D78F2281");
