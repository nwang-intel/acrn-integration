cmd_/home/darcy/src/socwatch_chrome_linux_NDA_v2.6.1_x86_64/socwatch_driver/./src/sw_hardware_io.o := gcc -Wp,-MD,/home/darcy/src/socwatch_chrome_linux_NDA_v2.6.1_x86_64/socwatch_driver/./src/.sw_hardware_io.o.d  -nostdinc -isystem /usr/lib/gcc/x86_64-linux-gnu/7/include -I/home/darcy/src/tmp/master/sos/kernel/arch/x86/include -I./arch/x86/include/generated  -I/home/darcy/src/tmp/master/sos/kernel/include -I./include -I/home/darcy/src/tmp/master/sos/kernel/arch/x86/include/uapi -I./arch/x86/include/generated/uapi -I/home/darcy/src/tmp/master/sos/kernel/include/uapi -I./include/generated/uapi -include /home/darcy/src/tmp/master/sos/kernel/include/linux/kconfig.h  -I/home/darcy/src/socwatch_chrome_linux_NDA_v2.6.1_x86_64/socwatch_driver -I/home/darcy/src/socwatch_chrome_linux_NDA_v2.6.1_x86_64/socwatch_driver -D__KERNEL__ -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -Werror-implicit-function-declaration -Wno-format-security -std=gnu89 -fno-PIE -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -m64 -falign-jumps=1 -falign-loops=1 -mno-80387 -mno-fp-ret-in-387 -mpreferred-stack-boundary=3 -mskip-rax-setup -march=core2 -mno-red-zone -mcmodel=kernel -funit-at-a-time -DCONFIG_AS_CFI=1 -DCONFIG_AS_CFI_SIGNAL_FRAME=1 -DCONFIG_AS_CFI_SECTIONS=1 -DCONFIG_AS_FXSAVEQ=1 -DCONFIG_AS_SSSE3=1 -DCONFIG_AS_CRC32=1 -DCONFIG_AS_AVX=1 -DCONFIG_AS_AVX2=1 -DCONFIG_AS_AVX512=1 -DCONFIG_AS_SHA1_NI=1 -DCONFIG_AS_SHA256_NI=1 -pipe -Wno-sign-compare -fno-asynchronous-unwind-tables -mindirect-branch=thunk-extern -mindirect-branch-register -DRETPOLINE -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-int-in-bool-context -O2 --param=allow-store-data-races=0 -DCC_HAVE_ASM_GOTO -Wframe-larger-than=2048 -fno-stack-protector -Wno-unused-but-set-variable -Wno-unused-const-variable -fno-var-tracking-assignments -g -pg -mfentry -DCC_USING_FENTRY -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fno-merge-all-constants -fmerge-constants -fno-stack-check -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init  -I/home/darcy/src/socwatch_chrome_linux_NDA_v2.6.1_x86_64/socwatch_driver/../common/include  -I/home/darcy/src/socwatch_chrome_linux_NDA_v2.6.1_x86_64/socwatch_driver/inc -DDO_ANDROID=0 -DDO_SOCPERF=1 -DDO_DRIVER_PROFILING=0 -Werror=strict-prototypes -Werror=pointer-to-int-cast -Werror=int-to-pointer-cast -Werror=format -Werror=attributes  -DMODULE  -DKBUILD_BASENAME='"sw_hardware_io"'  -DKBUILD_MODNAME='"socwatch2_6"' -c -o /home/darcy/src/socwatch_chrome_linux_NDA_v2.6.1_x86_64/socwatch_driver/./src/.tmp_sw_hardware_io.o /home/darcy/src/socwatch_chrome_linux_NDA_v2.6.1_x86_64/socwatch_driver/./src/sw_hardware_io.c

source_/home/darcy/src/socwatch_chrome_linux_NDA_v2.6.1_x86_64/socwatch_driver/./src/sw_hardware_io.o := /home/darcy/src/socwatch_chrome_linux_NDA_v2.6.1_x86_64/socwatch_driver/./src/sw_hardware_io.c

deps_/home/darcy/src/socwatch_chrome_linux_NDA_v2.6.1_x86_64/socwatch_driver/./src/sw_hardware_io.o := \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/compiler_types.h \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
    $(wildcard include/config/gcov/kernel.h) \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  /home/darcy/src/socwatch_chrome_linux_NDA_v2.6.1_x86_64/socwatch_driver/../common/include/sw_types.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/types.h \
    $(wildcard include/config/have/uid16.h) \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/types.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/uapi/asm/types.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/asm-generic/types.h \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/int-ll64.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/asm-generic/int-ll64.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/uapi/asm/bitsperlong.h \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/bitsperlong.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/asm-generic/bitsperlong.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/posix_types.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/stddef.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/stddef.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/posix_types.h \
    $(wildcard include/config/x86/32.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/uapi/asm/posix_types_64.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/asm-generic/posix_types.h \
  /home/darcy/src/socwatch_chrome_linux_NDA_v2.6.1_x86_64/socwatch_driver/../common/include/sw_defines.h \
  /home/darcy/src/socwatch_chrome_linux_NDA_v2.6.1_x86_64/socwatch_driver/../common/include/sw_version.h \
  /home/darcy/src/socwatch_chrome_linux_NDA_v2.6.1_x86_64/socwatch_driver/../common/include/sw_kernel_defines.h \
  /home/darcy/src/socwatch_chrome_linux_NDA_v2.6.1_x86_64/socwatch_driver/inc/sw_ops_provider.h \
  /home/darcy/src/socwatch_chrome_linux_NDA_v2.6.1_x86_64/socwatch_driver/inc/sw_mem.h \
  /home/darcy/src/socwatch_chrome_linux_NDA_v2.6.1_x86_64/socwatch_driver/inc/sw_internal.h \
    $(wildcard include/config/x86/want/intel/mid.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/module.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/sysfs.h) \
    $(wildcard include/config/modules/tree/lookup.h) \
    $(wildcard include/config/livepatch.h) \
    $(wildcard include/config/unused/symbols.h) \
    $(wildcard include/config/module/sig.h) \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/kallsyms.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/tracepoints.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/event/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
    $(wildcard include/config/module/unload.h) \
    $(wildcard include/config/constructors.h) \
    $(wildcard include/config/strict/module/rwx.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
    $(wildcard include/config/page/poisoning/zero.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/const.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/arch/has/refcount.h) \
    $(wildcard include/config/panic/timeout.h) \
  /usr/lib/gcc/x86_64-linux-gnu/7/include/stdarg.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/linkage.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/stringify.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/module/rel/crcs.h) \
    $(wildcard include/config/trim/unused/ksyms.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/linkage.h \
    $(wildcard include/config/x86/64.h) \
    $(wildcard include/config/x86/alignment/16.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/stack/validation.h) \
    $(wildcard include/config/kasan.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/barrier.h \
    $(wildcard include/config/x86/ppro/fence.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/alternative.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/asm.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/nops.h \
    $(wildcard include/config/mk7.h) \
    $(wildcard include/config/x86/p6/nop.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/barrier.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/bitops.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/bitops.h \
    $(wildcard include/config/x86/cmov.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/rmwcc.h \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/bitops/find.h \
    $(wildcard include/config/generic/find/first/bit.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/bitops/sched.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/arch_hweight.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/cpufeatures.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/required-features.h \
    $(wildcard include/config/x86/minimum/cpu/family.h) \
    $(wildcard include/config/math/emulation.h) \
    $(wildcard include/config/x86/pae.h) \
    $(wildcard include/config/x86/cmpxchg64.h) \
    $(wildcard include/config/x86/use/3dnow.h) \
    $(wildcard include/config/matom.h) \
    $(wildcard include/config/x86/5level.h) \
    $(wildcard include/config/paravirt.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/disabled-features.h \
    $(wildcard include/config/x86/intel/mpx.h) \
    $(wildcard include/config/x86/intel/umip.h) \
    $(wildcard include/config/x86/intel/memory/protection/keys.h) \
    $(wildcard include/config/page/table/isolation.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/bitops/const_hweight.h \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/bitops/le.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/uapi/asm/byteorder.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/byteorder/little_endian.h \
    $(wildcard include/config/cpu/big/endian.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/byteorder/little_endian.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/swab.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/swab.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/uapi/asm/swab.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/byteorder/generic.h \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/typecheck.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/printk.h \
    $(wildcard include/config/message/loglevel/default.h) \
    $(wildcard include/config/console/loglevel/default.h) \
    $(wildcard include/config/early/printk.h) \
    $(wildcard include/config/printk/nmi.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/init.h \
    $(wildcard include/config/strict/kernel/rwx.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/kern_levels.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/kernel.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/sysinfo.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/cache.h \
    $(wildcard include/config/x86/l1/cache/shift.h) \
    $(wildcard include/config/x86/internode/cache/shift.h) \
    $(wildcard include/config/x86/vsmp.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/dynamic_debug.h \
    $(wildcard include/config/jump/label.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/jump_label.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/jump_label.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/build_bug.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/stat.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/uapi/asm/stat.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/stat.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/seqlock.h \
    $(wildcard include/config/debug/lock/alloc.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/preempt.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/preempt.h \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/preempt.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/percpu.h \
    $(wildcard include/config/x86/64/smp.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/percpu.h \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/thread_info.h \
    $(wildcard include/config/thread/info/in/task.h) \
    $(wildcard include/config/debug/stack/usage.h) \
    $(wildcard include/config/debug/kmemleak.h) \
    $(wildcard include/config/have/arch/within/stack/frames.h) \
    $(wildcard include/config/hardened/usercopy.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/bug.h \
    $(wildcard include/config/bug/on/data/corruption.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/bug.h \
    $(wildcard include/config/debug/bugverbose.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/restart_block.h \
    $(wildcard include/config/compat.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/current.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/thread_info.h \
    $(wildcard include/config/vm86.h) \
    $(wildcard include/config/frame/pointer.h) \
    $(wildcard include/config/ia32/emulation.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/page.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/page_types.h \
    $(wildcard include/config/physical/start.h) \
    $(wildcard include/config/physical/align.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/mem_encrypt.h \
    $(wildcard include/config/arch/has/mem/encrypt.h) \
    $(wildcard include/config/amd/mem/encrypt.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/mem_encrypt.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/uapi/asm/bootparam.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/screen_info.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/screen_info.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/apm_bios.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/apm_bios.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/ioctl.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/uapi/asm/ioctl.h \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/ioctl.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/asm-generic/ioctl.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/edd.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/edd.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/ist.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/uapi/asm/ist.h \
  /home/darcy/src/tmp/master/sos/kernel/include/video/edid.h \
    $(wildcard include/config/x86.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/video/edid.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/page_64_types.h \
    $(wildcard include/config/randomize/memory.h) \
    $(wildcard include/config/randomize/base.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/kaslr.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/page_64.h \
    $(wildcard include/config/debug/virtual.h) \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/x86/vsyscall/emulation.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/range.h \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/memory_model.h \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/pfn.h \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/getorder.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/cpufeature.h \
    $(wildcard include/config/x86/feature/names.h) \
    $(wildcard include/config/x86/fast/feature/tests.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/processor.h \
    $(wildcard include/config/cc/stackprotector.h) \
    $(wildcard include/config/x86/debugctlmsr.h) \
    $(wildcard include/config/cpu/sup/amd.h) \
    $(wildcard include/config/xen.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/processor-flags.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/uapi/asm/processor-flags.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/math_emu.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/ptrace.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/segment.h \
    $(wildcard include/config/xen/pv.h) \
    $(wildcard include/config/x86/32/lazy/gs.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/uapi/asm/ptrace.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/uapi/asm/ptrace-abi.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/paravirt_types.h \
    $(wildcard include/config/pgtable/levels.h) \
    $(wildcard include/config/paravirt/debug.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/desc_defs.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/kmap_types.h \
    $(wildcard include/config/debug/highmem.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/kmap_types.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/pgtable_types.h \
    $(wildcard include/config/mem/soft/dirty.h) \
    $(wildcard include/config/proc/fs.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/pgtable_64_types.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/sparsemem.h \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/pgtable-nop4d.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/nospec-branch.h \
    $(wildcard include/config/retpoline.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/alternative-asm.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/msr-index.h \
    $(wildcard include/config/control.h) \
    $(wildcard include/config/tdp/nominal.h) \
    $(wildcard include/config/tdp/level/1.h) \
    $(wildcard include/config/tdp/level/2.h) \
    $(wildcard include/config/tdp/control.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/spinlock_types.h \
    $(wildcard include/config/paravirt/spinlocks.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/qspinlock_types.h \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/qrwlock_types.h \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/ptrace.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/uapi/asm/sigcontext.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/msr.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/msr-index.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/uapi/asm/errno.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/asm-generic/errno.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/asm-generic/errno-base.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/cpumask.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/bitmap.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
    $(wildcard include/config/fortify/source.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/string.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/string.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/string_64.h \
    $(wildcard include/config/x86/mce.h) \
    $(wildcard include/config/arch/has/uaccess/flushcache.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/uapi/asm/msr.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/atomic.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/cmpxchg.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/cmpxchg_64.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/atomic64_64.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/tracepoint-defs.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/atomic.h \
    $(wildcard include/config/generic/atomic64.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/atomic-long.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/static_key.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/paravirt.h \
    $(wildcard include/config/debug/entry.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/frame.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/special_insns.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/fpu/types.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/unwind_hints.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/orc_types.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/personality.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/personality.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/math64.h \
    $(wildcard include/config/arch/supports/int128.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/div64.h \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/div64.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/err.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/irqflags.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/bottom_half.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/spinlock_types.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
    $(wildcard include/config/lockdep/crossrelease.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/rwlock_types.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/spinlock.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/qspinlock.h \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/qspinlock.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/qrwlock.h \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/qrwlock.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/rwlock.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/spinlock_api_smp.h \
    $(wildcard include/config/inline/spin/lock.h) \
    $(wildcard include/config/inline/spin/lock/bh.h) \
    $(wildcard include/config/inline/spin/lock/irq.h) \
    $(wildcard include/config/inline/spin/lock/irqsave.h) \
    $(wildcard include/config/inline/spin/trylock.h) \
    $(wildcard include/config/inline/spin/trylock/bh.h) \
    $(wildcard include/config/uninline/spin/unlock.h) \
    $(wildcard include/config/inline/spin/unlock/bh.h) \
    $(wildcard include/config/inline/spin/unlock/irq.h) \
    $(wildcard include/config/inline/spin/unlock/irqrestore.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/rwlock_api_smp.h \
    $(wildcard include/config/inline/read/lock.h) \
    $(wildcard include/config/inline/write/lock.h) \
    $(wildcard include/config/inline/read/lock/bh.h) \
    $(wildcard include/config/inline/write/lock/bh.h) \
    $(wildcard include/config/inline/read/lock/irq.h) \
    $(wildcard include/config/inline/write/lock/irq.h) \
    $(wildcard include/config/inline/read/lock/irqsave.h) \
    $(wildcard include/config/inline/write/lock/irqsave.h) \
    $(wildcard include/config/inline/read/trylock.h) \
    $(wildcard include/config/inline/write/trylock.h) \
    $(wildcard include/config/inline/read/unlock.h) \
    $(wildcard include/config/inline/write/unlock.h) \
    $(wildcard include/config/inline/read/unlock/bh.h) \
    $(wildcard include/config/inline/write/unlock/bh.h) \
    $(wildcard include/config/inline/read/unlock/irq.h) \
    $(wildcard include/config/inline/write/unlock/irq.h) \
    $(wildcard include/config/inline/read/unlock/irqrestore.h) \
    $(wildcard include/config/inline/write/unlock/irqrestore.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/time64.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/time.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/uidgid.h \
    $(wildcard include/config/multiuser.h) \
    $(wildcard include/config/user/ns.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/highuid.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/kmod.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/umh.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/gfp.h \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/zone/device.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/pm/sleep.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/cma.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/vm/pgflags.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/zsmalloc.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/page/extension.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/numa/balancing.h) \
    $(wildcard include/config/deferred/struct/page/init.h) \
    $(wildcard include/config/transparent/hugepage.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/memory/hotremove.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/wait.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/wait.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/nodemask.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/page-flags-layout.h \
  include/generated/bounds.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/memory_hotplug.h \
    $(wildcard include/config/arch/has/add/pages.h) \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
    $(wildcard include/config/have/bootmem/info/node.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/notifier.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/errno.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/errno.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/mutex.h \
    $(wildcard include/config/mutex/spin/on/owner.h) \
    $(wildcard include/config/debug/mutexes.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/osq_lock.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/debug_locks.h \
    $(wildcard include/config/debug/locking/api/selftests.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/rwsem.h \
    $(wildcard include/config/rwsem/spin/on/owner.h) \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/rwsem.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/srcu.h \
    $(wildcard include/config/tiny/srcu.h) \
    $(wildcard include/config/tree/srcu.h) \
    $(wildcard include/config/srcu.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/rcupdate.h \
    $(wildcard include/config/preempt/rcu.h) \
    $(wildcard include/config/rcu/stall/common.h) \
    $(wildcard include/config/no/hz/full.h) \
    $(wildcard include/config/rcu/nocb/cpu.h) \
    $(wildcard include/config/tasks/rcu.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/tiny/rcu.h) \
    $(wildcard include/config/debug/objects/rcu/head.h) \
    $(wildcard include/config/prove/rcu.h) \
    $(wildcard include/config/rcu/boost.h) \
    $(wildcard include/config/arch/weak/release/acquire.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/rcutree.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
    $(wildcard include/config/wq/watchdog.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/timer.h \
    $(wildcard include/config/debug/objects/timers.h) \
    $(wildcard include/config/no/hz/common.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/ktime.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/jiffies.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/timex.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/timex.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/param.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/uapi/asm/param.h \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/asm-generic/param.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/timex.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/tsc.h \
    $(wildcard include/config/x86/tsc.h) \
  include/generated/timeconst.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/timekeeping.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/rcu_segcblist.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/srcutree.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/rcu_node_tree.h \
    $(wildcard include/config/rcu/fanout.h) \
    $(wildcard include/config/rcu/fanout/leaf.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/completion.h \
    $(wildcard include/config/lockdep/completions.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/topology.h \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
    $(wildcard include/config/sched/smt.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/smp.h \
    $(wildcard include/config/up/late/init.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/llist.h \
    $(wildcard include/config/arch/have/nmi/safe/cmpxchg.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/smp.h \
    $(wildcard include/config/x86/local/apic.h) \
    $(wildcard include/config/x86/io/apic.h) \
    $(wildcard include/config/debug/nmi/selftest.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/mpspec.h \
    $(wildcard include/config/eisa.h) \
    $(wildcard include/config/x86/mpparse.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/mpspec_def.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/x86_init.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/apicdef.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/apic.h \
    $(wildcard include/config/x86/x2apic.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/fixmap.h \
    $(wildcard include/config/provide/ohci1394/dma/init.h) \
    $(wildcard include/config/pci/mmconfig.h) \
    $(wildcard include/config/x86/intel/mid.h) \
    $(wildcard include/config/acpi/apei/ghes.h) \
    $(wildcard include/config/intel/txt.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/acpi.h \
    $(wildcard include/config/acpi/apei.h) \
    $(wildcard include/config/acpi.h) \
    $(wildcard include/config/acpi/numa.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/acpi/pdc_intel.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/numa.h \
    $(wildcard include/config/numa/emu.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/topology.h \
    $(wildcard include/config/sched/mc/prio.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/topology.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/mmu.h \
    $(wildcard include/config/modify/ldt/syscall.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/realmode.h \
    $(wildcard include/config/acpi/sleep.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/io.h \
    $(wildcard include/config/mtrr.h) \
    $(wildcard include/config/x86/pat.h) \
  arch/x86/include/generated/asm/early_ioremap.h \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/early_ioremap.h \
    $(wildcard include/config/generic/early/ioremap.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/iomap.h \
    $(wildcard include/config/has/ioport/map.h) \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/generic/iomap.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/pci_iomap.h \
    $(wildcard include/config/no/generic/pci/ioport/map.h) \
    $(wildcard include/config/generic/pci/iomap.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/io.h \
    $(wildcard include/config/virt/to/bus.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/vmalloc.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/rbtree.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/uapi/asm/vsyscall.h \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/fixmap.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/io_apic.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/irq_vectors.h \
    $(wildcard include/config/have/kvm.h) \
    $(wildcard include/config/pci/msi.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/sysctl.h \
    $(wildcard include/config/sysctl.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/sysctl.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/elf.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/elf.h \
    $(wildcard include/config/x86/x32/abi.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/user.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/user_64.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/uapi/asm/auxvec.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/vdso.h \
    $(wildcard include/config/x86/x32.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/mm_types.h \
    $(wildcard include/config/have/cmpxchg/double.h) \
    $(wildcard include/config/have/aligned/struct/page.h) \
    $(wildcard include/config/userfaultfd.h) \
    $(wildcard include/config/have/arch/compat/mmap/bases.h) \
    $(wildcard include/config/membarrier.h) \
    $(wildcard include/config/aio.h) \
    $(wildcard include/config/mmu/notifier.h) \
    $(wildcard include/config/arch/want/batched/unmap/tlb/flush.h) \
    $(wildcard include/config/hmm.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/mm_types_task.h \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/arch/enable/split/pmd/ptlock.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/tlbbatch.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/auxvec.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/auxvec.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/uprobes.h \
    $(wildcard include/config/uprobes.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/elf.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/elf-em.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/kobject.h \
    $(wildcard include/config/uevent/helper.h) \
    $(wildcard include/config/debug/kobject/release.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/sysfs.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/kernfs.h \
    $(wildcard include/config/kernfs.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/idr.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/radix-tree.h \
    $(wildcard include/config/radix/tree/multiorder.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/kobject_ns.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/kref.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/refcount.h \
    $(wildcard include/config/refcount/full.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/refcount.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/moduleparam.h \
    $(wildcard include/config/alpha.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/ppc64.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/rbtree_latch.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/module.h \
    $(wildcard include/config/unwinder/orc.h) \
    $(wildcard include/config/m486.h) \
    $(wildcard include/config/m586.h) \
    $(wildcard include/config/m586tsc.h) \
    $(wildcard include/config/m586mmx.h) \
    $(wildcard include/config/mcore2.h) \
    $(wildcard include/config/m686.h) \
    $(wildcard include/config/mpentiumii.h) \
    $(wildcard include/config/mpentiumiii.h) \
    $(wildcard include/config/mpentiumm.h) \
    $(wildcard include/config/mpentium4.h) \
    $(wildcard include/config/mk6.h) \
    $(wildcard include/config/mk8.h) \
    $(wildcard include/config/melan.h) \
    $(wildcard include/config/mcrusoe.h) \
    $(wildcard include/config/mefficeon.h) \
    $(wildcard include/config/mwinchipc6.h) \
    $(wildcard include/config/mwinchip3d.h) \
    $(wildcard include/config/mcyrixiii.h) \
    $(wildcard include/config/mviac3/2.h) \
    $(wildcard include/config/mviac7.h) \
    $(wildcard include/config/mgeodegx1.h) \
    $(wildcard include/config/mgeode/lx.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/module.h \
    $(wildcard include/config/have/mod/arch/specific.h) \
    $(wildcard include/config/modules/use/elf/rel.h) \
    $(wildcard include/config/modules/use/elf/rela.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/orc_types.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/slab.h \
    $(wildcard include/config/debug/slab.h) \
    $(wildcard include/config/failslab.h) \
    $(wildcard include/config/slob.h) \
    $(wildcard include/config/have/hardened/usercopy/allocator.h) \
    $(wildcard include/config/slab.h) \
    $(wildcard include/config/slub.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/kmemleak.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/kasan.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/hrtimer.h \
    $(wildcard include/config/high/res/timers.h) \
    $(wildcard include/config/time/low/res.h) \
    $(wildcard include/config/timerfd.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/timerqueue.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/fs.h \
    $(wildcard include/config/fs/posix/acl.h) \
    $(wildcard include/config/security.h) \
    $(wildcard include/config/cgroup/writeback.h) \
    $(wildcard include/config/ima.h) \
    $(wildcard include/config/fsnotify.h) \
    $(wildcard include/config/fs/encryption.h) \
    $(wildcard include/config/epoll.h) \
    $(wildcard include/config/file/locking.h) \
    $(wildcard include/config/quota.h) \
    $(wildcard include/config/fs/dax.h) \
    $(wildcard include/config/mandatory/file/locking.h) \
    $(wildcard include/config/block.h) \
    $(wildcard include/config/migration.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/wait_bit.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/kdev_t.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/kdev_t.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/dcache.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/rculist.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/rculist_bl.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/list_bl.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/bit_spinlock.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/lockref.h \
    $(wildcard include/config/arch/use/cmpxchg/lockref.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/stringhash.h \
    $(wildcard include/config/dcache/word/access.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/hash.h \
    $(wildcard include/config/have/arch/hash.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/path.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/list_lru.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/shrinker.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/pid.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/capability.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/capability.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/semaphore.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/fcntl.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/fcntl.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/uapi/asm/fcntl.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/asm-generic/fcntl.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/fiemap.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/migrate_mode.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/percpu-rwsem.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/rcuwait.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/rcu_sync.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/delayed_call.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/uuid.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/uuid.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/errseq.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/fs.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/limits.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/quota.h \
    $(wildcard include/config/quota/netlink/interface.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/percpu_counter.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/dqblk_xfs.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/dqblk_v1.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/dqblk_v2.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/dqblk_qtree.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/projid.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/quota.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/nfs_fs_i.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/device.h \
    $(wildcard include/config/debug/devres.h) \
    $(wildcard include/config/generic/msi/irq/domain.h) \
    $(wildcard include/config/pinctrl.h) \
    $(wildcard include/config/generic/msi/irq.h) \
    $(wildcard include/config/dma/cma.h) \
    $(wildcard include/config/of.h) \
    $(wildcard include/config/devtmpfs.h) \
    $(wildcard include/config/sysfs/deprecated.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/ioport.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/klist.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/pinctrl/devinfo.h \
    $(wildcard include/config/pm.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/pinctrl/consumer.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/seq_file.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/cred.h \
    $(wildcard include/config/debug/credentials.h) \
    $(wildcard include/config/keys.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/key.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/assoc_array.h \
    $(wildcard include/config/associative/array.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/selinux.h \
    $(wildcard include/config/security/selinux.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/sched.h \
    $(wildcard include/config/virt/cpu/accounting/native.h) \
    $(wildcard include/config/sched/info.h) \
    $(wildcard include/config/schedstats.h) \
    $(wildcard include/config/fair/group/sched.h) \
    $(wildcard include/config/rt/group/sched.h) \
    $(wildcard include/config/cgroup/sched.h) \
    $(wildcard include/config/blk/dev/io/trace.h) \
    $(wildcard include/config/compat/brk.h) \
    $(wildcard include/config/cgroups.h) \
    $(wildcard include/config/arch/has/scaled/cputime.h) \
    $(wildcard include/config/virt/cpu/accounting/gen.h) \
    $(wildcard include/config/posix/timers.h) \
    $(wildcard include/config/sysvipc.h) \
    $(wildcard include/config/detect/hung/task.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/rt/mutexes.h) \
    $(wildcard include/config/ubsan.h) \
    $(wildcard include/config/task/xacct.h) \
    $(wildcard include/config/cpusets.h) \
    $(wildcard include/config/intel/rdt.h) \
    $(wildcard include/config/futex.h) \
    $(wildcard include/config/perf/events.h) \
    $(wildcard include/config/task/delay/acct.h) \
    $(wildcard include/config/fault/injection.h) \
    $(wildcard include/config/latencytop.h) \
    $(wildcard include/config/function/graph/tracer.h) \
    $(wildcard include/config/kcov.h) \
    $(wildcard include/config/bcache.h) \
    $(wildcard include/config/vmap/stack.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/sched.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/sem.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/sem.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/ipc.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/rhashtable.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/jhash.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/unaligned/packed_struct.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/list_nulls.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/ipc.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/uapi/asm/ipcbuf.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/asm-generic/ipcbuf.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/uapi/asm/sembuf.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/shm.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/shm.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/asm-generic/hugetlb_encode.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/uapi/asm/shmbuf.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/asm-generic/shmbuf.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/shmparam.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/kcov.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/kcov.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/plist.h \
    $(wildcard include/config/debug/pi/list.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/seccomp.h \
    $(wildcard include/config/seccomp.h) \
    $(wildcard include/config/have/arch/seccomp/filter.h) \
    $(wildcard include/config/seccomp/filter.h) \
    $(wildcard include/config/checkpoint/restore.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/seccomp.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/seccomp.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/unistd.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/uapi/asm/unistd.h \
  arch/x86/include/generated/uapi/asm/unistd_64.h \
  arch/x86/include/generated/asm/unistd_64_x32.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/ia32_unistd.h \
  arch/x86/include/generated/asm/unistd_32_ia32.h \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/seccomp.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/unistd.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/resource.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/resource.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/uapi/asm/resource.h \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/resource.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/asm-generic/resource.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/latencytop.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/sched/prio.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/signal_types.h \
    $(wildcard include/config/old/sigaction.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/signal.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/signal.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/uapi/asm/signal.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/asm-generic/signal-defs.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/uapi/asm/siginfo.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/asm-generic/siginfo.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/task_io_accounting.h \
    $(wildcard include/config/task/io/accounting.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/sched/user.h \
    $(wildcard include/config/fanotify.h) \
    $(wildcard include/config/posix/mqueue.h) \
    $(wildcard include/config/bpf/syscall.h) \
    $(wildcard include/config/net.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/pinctrl/pinctrl-state.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/pm.h \
    $(wildcard include/config/vt/console/sleep.h) \
    $(wildcard include/config/pm/clk.h) \
    $(wildcard include/config/pm/generic/domains.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/ratelimit.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/device.h \
    $(wildcard include/config/intel/iommu.h) \
    $(wildcard include/config/amd/iommu.h) \
    $(wildcard include/config/x86/dev/dma/ops.h) \
    $(wildcard include/config/pci/domains.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/pm_wakeup.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/cdev.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/pci.h \
    $(wildcard include/config/pci/iov.h) \
    $(wildcard include/config/pcieaer.h) \
    $(wildcard include/config/pcieaspm.h) \
    $(wildcard include/config/pcie/ptm.h) \
    $(wildcard include/config/pci/ats.h) \
    $(wildcard include/config/pci/pri.h) \
    $(wildcard include/config/pci/pasid.h) \
    $(wildcard include/config/pci/domains/generic.h) \
    $(wildcard include/config/pci/bus/addr/t/64bit.h) \
    $(wildcard include/config/pcieportbus.h) \
    $(wildcard include/config/pcie/ecrc.h) \
    $(wildcard include/config/ht/irq.h) \
    $(wildcard include/config/pci/quirks.h) \
    $(wildcard include/config/hibernate/callbacks.h) \
    $(wildcard include/config/acpi/mcfg.h) \
    $(wildcard include/config/hotplug/pci.h) \
    $(wildcard include/config/eeh.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/mod_devicetable.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/interrupt.h \
    $(wildcard include/config/irq/forced/threading.h) \
    $(wildcard include/config/generic/irq/probe.h) \
    $(wildcard include/config/irq/timings.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/irqreturn.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/irqnr.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/irqnr.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/hardirq.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/ftrace_irq.h \
    $(wildcard include/config/ftrace/nmi/enter.h) \
    $(wildcard include/config/hwlat/tracer.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/vtime.h \
    $(wildcard include/config/virt/cpu/accounting.h) \
    $(wildcard include/config/irq/time/accounting.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/context_tracking_state.h \
    $(wildcard include/config/context/tracking.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/hardirq.h \
    $(wildcard include/config/x86/thermal/vector.h) \
    $(wildcard include/config/x86/mce/threshold.h) \
    $(wildcard include/config/x86/mce/amd.h) \
    $(wildcard include/config/hyperv.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/irq.h \
    $(wildcard include/config/generic/irq/effective/aff/mask.h) \
    $(wildcard include/config/generic/irq/ipi.h) \
    $(wildcard include/config/irq/domain/hierarchy.h) \
    $(wildcard include/config/generic/irq/migration.h) \
    $(wildcard include/config/generic/pending/irq.h) \
    $(wildcard include/config/hardirqs/sw/resend.h) \
    $(wildcard include/config/generic/irq/legacy/alloc/hwirq.h) \
    $(wildcard include/config/generic/irq/legacy.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/irqhandler.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/io.h \
    $(wildcard include/config/have/arch/huge/vmap.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/irq.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/irq_regs.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/irqdesc.h \
    $(wildcard include/config/irq/preflow/fasteoi.h) \
    $(wildcard include/config/generic/irq/debugfs.h) \
    $(wildcard include/config/sparse/irq.h) \
    $(wildcard include/config/handle/domain/irq.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/hw_irq.h \
    $(wildcard include/config/hpet/timer.h) \
    $(wildcard include/config/dmar/table.h) \
    $(wildcard include/config/x86/uv.h) \
    $(wildcard include/config/vmd.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/profile.h \
    $(wildcard include/config/profiling.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/sections.h \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/sections.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/extable.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/resource_ext.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/pci.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/pci_regs.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/pci_ids.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/pci-dma.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/dmapool.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/scatterlist.h \
    $(wildcard include/config/debug/sg.h) \
    $(wildcard include/config/need/sg/dma/length.h) \
    $(wildcard include/config/arch/has/sg/chain.h) \
    $(wildcard include/config/sg/pool.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/mm.h \
    $(wildcard include/config/have/arch/mmap/rnd/bits.h) \
    $(wildcard include/config/have/arch/mmap/rnd/compat/bits.h) \
    $(wildcard include/config/arch/uses/high/vma/flags.h) \
    $(wildcard include/config/ppc.h) \
    $(wildcard include/config/parisc.h) \
    $(wildcard include/config/metag.h) \
    $(wildcard include/config/stack/growsup.h) \
    $(wildcard include/config/device/private.h) \
    $(wildcard include/config/device/public.h) \
    $(wildcard include/config/shmem.h) \
    $(wildcard include/config/debug/vm/rb.h) \
    $(wildcard include/config/page/poisoning.h) \
    $(wildcard include/config/debug/pagealloc.h) \
    $(wildcard include/config/hibernation.h) \
    $(wildcard include/config/hugetlbfs.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/percpu-refcount.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/page_ext.h \
    $(wildcard include/config/idle/page/tracking.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/stacktrace.h \
    $(wildcard include/config/stacktrace.h) \
    $(wildcard include/config/user/stacktrace/support.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/stackdepot.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/page_ref.h \
    $(wildcard include/config/debug/page/ref.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/page-flags.h \
    $(wildcard include/config/arch/uses/pg/uncached.h) \
    $(wildcard include/config/memory/failure.h) \
    $(wildcard include/config/swap.h) \
    $(wildcard include/config/thp/swap.h) \
    $(wildcard include/config/ksm.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/memremap.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/pgtable.h \
    $(wildcard include/config/debug/wx.h) \
    $(wildcard include/config/have/arch/transparent/hugepage/pud.h) \
    $(wildcard include/config/have/arch/soft/dirty.h) \
    $(wildcard include/config/arch/enable/thp/migration.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/pgtable_64.h \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/pgtable.h \
    $(wildcard include/config/x86/espfix64.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/huge_mm.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/sched/coredump.h \
    $(wildcard include/config/core/dump/default/elf/headers.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/vmstat.h \
    $(wildcard include/config/vm/event/counters.h) \
    $(wildcard include/config/debug/tlbflush.h) \
    $(wildcard include/config/debug/vm/vmacache.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/vm_event_item.h \
    $(wildcard include/config/memory/balloon.h) \
    $(wildcard include/config/balloon/compaction.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/pci.h \
    $(wildcard include/config/pci/msi/irq/domain.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/pat.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/pci_64.h \
    $(wildcard include/config/calgary/iommu.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/asm-generic/pci.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/pci-dma-compat.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/dma-mapping.h \
    $(wildcard include/config/have/generic/dma/coherent.h) \
    $(wildcard include/config/has/dma.h) \
    $(wildcard include/config/arch/has/dma/set/coherent/mask.h) \
    $(wildcard include/config/need/dma/map/state.h) \
    $(wildcard include/config/dma/api/debug.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/sizes.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/dma-debug.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/dma-direction.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/dma-mapping.h \
    $(wildcard include/config/isa.h) \
    $(wildcard include/config/x86/dma/remap.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/swiotlb.h \
    $(wildcard include/config/swiotlb.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/swiotlb.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/dma-contiguous.h \
  include/generated/uapi/linux/version.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/sfi.h \
    $(wildcard include/config/sfi.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/cpufreq.h \
    $(wildcard include/config/cpu/freq.h) \
    $(wildcard include/config/cpu/freq/stat.h) \
    $(wildcard include/config/pm/opp.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/clk.h \
    $(wildcard include/config/common/clk.h) \
    $(wildcard include/config/have/clk/prepare.h) \
    $(wildcard include/config/have/clk.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/local.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/uaccess.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/kasan-checks.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/uaccess.h \
    $(wildcard include/config/x86/intel/usercopy.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/smap.h \
    $(wildcard include/config/x86/smap.h) \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/uaccess_64.h \
  /home/darcy/src/socwatch_chrome_linux_NDA_v2.6.1_x86_64/socwatch_driver/../common/include/sw_structs.h \
  /home/darcy/src/socwatch_chrome_linux_NDA_v2.6.1_x86_64/socwatch_driver/../common/include/sw_types.h \
  /home/darcy/src/socwatch_chrome_linux_NDA_v2.6.1_x86_64/socwatch_driver/../common/include/sw_ioctl.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/compat.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/sched/task_stack.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/magic.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/asm/user32.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/compat.h \
    $(wildcard include/config/compat/old/sigaction.h) \
    $(wildcard include/config/odd/rt/sigaction.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/socket.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/uapi/asm/socket.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/asm-generic/socket.h \
  /home/darcy/src/tmp/master/sos/kernel/arch/x86/include/uapi/asm/sockios.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/asm-generic/sockios.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/sockios.h \
  /home/darcy/src/tmp/master/sos/kernel/include/linux/uio.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/uio.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/socket.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/if.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/libc-compat.h \
    $(wildcard include/config/data.h) \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/hdlc/ioctl.h \
  /home/darcy/src/tmp/master/sos/kernel/include/uapi/linux/aio_abi.h \
  /home/darcy/src/socwatch_chrome_linux_NDA_v2.6.1_x86_64/socwatch_driver/../common/include/sw_defines.h \
  /home/darcy/src/socwatch_chrome_linux_NDA_v2.6.1_x86_64/socwatch_driver/inc/sw_list.h \
  /home/darcy/src/socwatch_chrome_linux_NDA_v2.6.1_x86_64/socwatch_driver/inc/sw_hardware_io.h \

/home/darcy/src/socwatch_chrome_linux_NDA_v2.6.1_x86_64/socwatch_driver/./src/sw_hardware_io.o: $(deps_/home/darcy/src/socwatch_chrome_linux_NDA_v2.6.1_x86_64/socwatch_driver/./src/sw_hardware_io.o)

$(deps_/home/darcy/src/socwatch_chrome_linux_NDA_v2.6.1_x86_64/socwatch_driver/./src/sw_hardware_io.o):
