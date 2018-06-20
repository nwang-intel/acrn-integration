#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

MODULE_INFO(vermagic, VERMAGIC_STRING);
MODULE_INFO(name, KBUILD_MODNAME);

__visible struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

#ifdef RETPOLINE
MODULE_INFO(retpoline, "Y");
#endif

static const struct modversion_info ____versions[]
__used
__attribute__((section("__versions"))) = {
	{ 0x801d78b8, __VMLINUX_SYMBOL_STR(module_layout) },
	{ 0x6bc3fbc0, __VMLINUX_SYMBOL_STR(__unregister_chrdev) },
	{ 0xc67fdd62, __VMLINUX_SYMBOL_STR(cdev_alloc) },
	{ 0x74b1938e, __VMLINUX_SYMBOL_STR(tracepoint_probe_register) },
	{ 0xf58dfadb, __VMLINUX_SYMBOL_STR(cdev_del) },
	{ 0xd3cd1dbc, __VMLINUX_SYMBOL_STR(pci_write_config_dword) },
	{ 0xd2b09ce5, __VMLINUX_SYMBOL_STR(__kmalloc) },
	{ 0x75d87f97, __VMLINUX_SYMBOL_STR(__cpuhp_remove_state) },
	{ 0x25d53754, __VMLINUX_SYMBOL_STR(SOCPERF_Read_Data2) },
	{ 0xcb2b5f1d, __VMLINUX_SYMBOL_STR(for_each_kernel_tracepoint) },
	{ 0xd6ee688f, __VMLINUX_SYMBOL_STR(vmalloc) },
	{ 0x754d539c, __VMLINUX_SYMBOL_STR(strlen) },
	{ 0x67315354, __VMLINUX_SYMBOL_STR(hrtimer_active) },
	{ 0xa647a58b, __VMLINUX_SYMBOL_STR(cpufreq_cpu_get) },
	{ 0xe8ee1807, __VMLINUX_SYMBOL_STR(hrtimer_cancel) },
	{ 0xb70789e, __VMLINUX_SYMBOL_STR(__might_fault) },
	{ 0xbb9a2726, __VMLINUX_SYMBOL_STR(telemetry_reset_events) },
	{ 0xa1f9a134, __VMLINUX_SYMBOL_STR(__x86_indirect_thunk_rsi) },
	{ 0x65d9e877, __VMLINUX_SYMBOL_STR(cpufreq_register_notifier) },
	{ 0xc2b21816, __VMLINUX_SYMBOL_STR(device_destroy) },
	{ 0x6729d3df, __VMLINUX_SYMBOL_STR(__get_user_4) },
	{ 0xeae3dfd6, __VMLINUX_SYMBOL_STR(__const_udelay) },
	{ 0xb8cc80d8, __VMLINUX_SYMBOL_STR(cpu_info) },
	{ 0xd4e54b1d, __VMLINUX_SYMBOL_STR(param_ops_bool) },
	{ 0x7b52a859, __VMLINUX_SYMBOL_STR(wrmsr_safe_on_cpu) },
	{ 0x7485e15e, __VMLINUX_SYMBOL_STR(unregister_chrdev_region) },
	{ 0x999e8297, __VMLINUX_SYMBOL_STR(vfree) },
	{ 0x4629334c, __VMLINUX_SYMBOL_STR(__preempt_count) },
	{ 0x7a2af7b4, __VMLINUX_SYMBOL_STR(cpu_number) },
	{ 0xd697e69a, __VMLINUX_SYMBOL_STR(trace_hardirqs_on) },
	{ 0x24eaa38c, __VMLINUX_SYMBOL_STR(smp_call_function_many) },
	{ 0x15ba50a6, __VMLINUX_SYMBOL_STR(jiffies) },
	{ 0x6bcb6e07, __VMLINUX_SYMBOL_STR(__might_sleep) },
	{ 0xe2d5255a, __VMLINUX_SYMBOL_STR(strcmp) },
	{ 0x53d1a113, __VMLINUX_SYMBOL_STR(cpumask_next) },
	{ 0x6214aef2, __VMLINUX_SYMBOL_STR(cpufreq_unregister_notifier) },
	{ 0x94320fac, __VMLINUX_SYMBOL_STR(__init_waitqueue_head) },
	{ 0xb44ad4b3, __VMLINUX_SYMBOL_STR(_copy_to_user) },
	{ 0x17de3d5, __VMLINUX_SYMBOL_STR(nr_cpu_ids) },
	{ 0x955a832f, __VMLINUX_SYMBOL_STR(___preempt_schedule) },
	{ 0xb8e7ce2c, __VMLINUX_SYMBOL_STR(__put_user_8) },
	{ 0x52e69846, __VMLINUX_SYMBOL_STR(hrtimer_start_range_ns) },
	{ 0xfb578fc5, __VMLINUX_SYMBOL_STR(memset) },
	{ 0xd86cd219, __VMLINUX_SYMBOL_STR(__cpu_possible_mask) },
	{ 0x706c5a65, __VMLINUX_SYMBOL_STR(preempt_count_sub) },
	{ 0xa292927d, __VMLINUX_SYMBOL_STR(_raw_spin_unlock_irqrestore) },
	{ 0x37befc70, __VMLINUX_SYMBOL_STR(jiffies_to_msecs) },
	{ 0x27e1a049, __VMLINUX_SYMBOL_STR(printk) },
	{ 0xe1537255, __VMLINUX_SYMBOL_STR(__list_del_entry_valid) },
	{ 0xd4ab6664, __VMLINUX_SYMBOL_STR(__cpu_online_mask) },
	{ 0xc917e655, __VMLINUX_SYMBOL_STR(debug_smp_processor_id) },
	{ 0xe7b00dfb, __VMLINUX_SYMBOL_STR(__x86_indirect_thunk_r13) },
	{ 0xcbdc93cf, __VMLINUX_SYMBOL_STR(telemetry_update_events) },
	{ 0x9cc4f70a, __VMLINUX_SYMBOL_STR(register_pm_notifier) },
	{ 0x8a0b286a, __VMLINUX_SYMBOL_STR(pci_get_domain_bus_and_slot) },
	{ 0x4eddcc72, __VMLINUX_SYMBOL_STR(device_create) },
	{ 0xcac5e796, __VMLINUX_SYMBOL_STR(pid_task) },
	{ 0xe299b8ed, __VMLINUX_SYMBOL_STR(__cpuhp_setup_state) },
	{ 0x68f31cbd, __VMLINUX_SYMBOL_STR(__list_add_valid) },
	{ 0xfe487975, __VMLINUX_SYMBOL_STR(init_wait_entry) },
	{ 0x9f46ced8, __VMLINUX_SYMBOL_STR(__sw_hweight64) },
	{ 0x1b9a1c9a, __VMLINUX_SYMBOL_STR(irq_stat) },
	{ 0xad46cc5c, __VMLINUX_SYMBOL_STR(cdev_add) },
	{ 0xde4e05fa, __VMLINUX_SYMBOL_STR(module_put) },
	{ 0xc79253df, __VMLINUX_SYMBOL_STR(pv_irq_ops) },
	{ 0xb601be4c, __VMLINUX_SYMBOL_STR(__x86_indirect_thunk_rdx) },
	{ 0xb2fd5ceb, __VMLINUX_SYMBOL_STR(__put_user_4) },
	{ 0x42c8de35, __VMLINUX_SYMBOL_STR(ioremap_nocache) },
	{ 0x93fca811, __VMLINUX_SYMBOL_STR(__get_free_pages) },
	{ 0x1000e51, __VMLINUX_SYMBOL_STR(schedule) },
	{ 0xb216ede2, __VMLINUX_SYMBOL_STR(__raw_spin_lock_init) },
	{ 0xe7eb1528, __VMLINUX_SYMBOL_STR(telemetry_raw_read_eventlog) },
	{ 0x2ea2c95c, __VMLINUX_SYMBOL_STR(__x86_indirect_thunk_rax) },
	{ 0x4fbd21c2, __VMLINUX_SYMBOL_STR(pci_read_config_dword) },
	{ 0xeb37463e, __VMLINUX_SYMBOL_STR(pv_cpu_ops) },
	{ 0x211f68f1, __VMLINUX_SYMBOL_STR(getnstimeofday64) },
	{ 0xbdfb6dbb, __VMLINUX_SYMBOL_STR(__fentry__) },
	{ 0x3c3c0c4f, __VMLINUX_SYMBOL_STR(cpufreq_cpu_put) },
	{ 0x280f9f14, __VMLINUX_SYMBOL_STR(__per_cpu_offset) },
	{ 0x23bbbca0, __VMLINUX_SYMBOL_STR(_raw_spin_lock_irqsave) },
	{ 0x4302d0eb, __VMLINUX_SYMBOL_STR(free_pages) },
	{ 0xc06fcbec, __VMLINUX_SYMBOL_STR(__wake_up) },
	{ 0xb4d72996, __VMLINUX_SYMBOL_STR(init_pid_ns) },
	{ 0x978a7262, __VMLINUX_SYMBOL_STR(prepare_to_wait_event) },
	{ 0x37a0cba, __VMLINUX_SYMBOL_STR(kfree) },
	{ 0x69acdf38, __VMLINUX_SYMBOL_STR(memcpy) },
	{ 0xc1f33cf5, __VMLINUX_SYMBOL_STR(hrtimer_init) },
	{ 0xedc03953, __VMLINUX_SYMBOL_STR(iounmap) },
	{ 0x17ac620c, __VMLINUX_SYMBOL_STR(__cpu_present_mask) },
	{ 0x7681946c, __VMLINUX_SYMBOL_STR(unregister_pm_notifier) },
	{ 0xb78846ce, __VMLINUX_SYMBOL_STR(telemetry_set_sampling_period) },
	{ 0xa1f432c5, __VMLINUX_SYMBOL_STR(class_destroy) },
	{ 0xdcdd468c, __VMLINUX_SYMBOL_STR(finish_wait) },
	{ 0x4294042b, __VMLINUX_SYMBOL_STR(telemetry_get_eventconfig) },
	{ 0x584738f9, __VMLINUX_SYMBOL_STR(rdmsr_safe_on_cpu) },
	{ 0x364647a4, __VMLINUX_SYMBOL_STR(param_ops_ushort) },
	{ 0xf229424a, __VMLINUX_SYMBOL_STR(preempt_count_add) },
	{ 0xe3fffae9, __VMLINUX_SYMBOL_STR(__x86_indirect_thunk_rbp) },
	{ 0x362ef408, __VMLINUX_SYMBOL_STR(_copy_from_user) },
	{ 0xec3d2e1b, __VMLINUX_SYMBOL_STR(trace_hardirqs_off) },
	{ 0x1e0e3be7, __VMLINUX_SYMBOL_STR(__class_create) },
	{ 0xf9274a0f, __VMLINUX_SYMBOL_STR(find_pid_ns) },
	{ 0x88db9f48, __VMLINUX_SYMBOL_STR(__check_object_size) },
	{ 0x6228c21f, __VMLINUX_SYMBOL_STR(smp_call_function_single) },
	{ 0x29537c9e, __VMLINUX_SYMBOL_STR(alloc_chrdev_region) },
	{ 0xf383fa5a, __VMLINUX_SYMBOL_STR(try_module_get) },
	{ 0x8c261e06, __VMLINUX_SYMBOL_STR(tracepoint_probe_unregister) },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=socperf2_0";

