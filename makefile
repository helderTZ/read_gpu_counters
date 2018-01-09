CC = gcc
CFLAGS = -static `pkg-config --cflags libdrm cairo`  
LDFLAGS = -static `pkg-config --libs libdrm cairo` 

CFLAGS += -g -O0	# optimization and debugging flags
CFLAGS += -fdump-rtl-expand	# necessary to create callgraph

# OpenCL linker flags
LDFLAGS += -static -I/opt/intel/opencl-sdk/include /opt/intel/opencl-sdk/lib64/libOpenCL.so

SOURCES = main.c read_gpu_counters.c errors.c
DEPENDENCIES = lib/libintel_tools.la
INCLUDES = -I./lib -I./lib/i915 -I.

OBJECTS =   #lib/rmtest.lo      lib/lib/igt_draw.lo  lib/igt_kms.lo      lib/igt_vgem.lo           lib/intel_mmio.lo         lib/media_fill_gen9.lo  lib/rendercopy_i915.lo \
			#lib/gpgpu_fill.lo  lib/igt_dummyload.lo lib/igt_pm.lo       lib/igt_x86.lo            lib/lib/intel_os.lo       lib/media_spin.lo       lib/sw_sync.lo         \
			#lib/igt_alsa.lo    lib/igt_fb.lo        lib/igt_primes.lo   lib/instdone.lo           lib/intel_reg_map.lo      lib/rendercopy_gen6.lo                         \
			#lib/igt_audio.lo   lib/igt_frame.lo     lib/igt_rand.lo     lib/intel_batchbuffer.lo  lib/ioctl_wrappers.lo     lib/rendercopy_gen7.lo                         \
			#lib/igt_aux.lo     lib/igt_gt.lo        lib/igt_stats.lo    lib/intel_chipset.lo      lib/media_fill_gen7.lo    lib/rendercopy_gen8.lo                         \
			#lib/igt_core.lo    lib/igt_gvt.lo       lib/igt_syncobj.lo  lib/intel_device_info.lo  lib/media_fill_gen8.lo    lib/rendercopy_gen9.lo                         \
			#lib/igt_debugfs.lo lib/igt_kmod.lo      lib/igt_sysfs.lo    lib/intel_iosf.lo         lib/media_fill_gen8lp.lo  lib/rendercopy_i830.lo                         \
			#lib/i915/gem_context.lo                 lib/i915/gem_scheduler.lo                     lib/i915/gem_submission.lo


all: read_gpu_counters.c
	libtool --mode=link --tag=CC $(CC) $(CFLAGS) $(SOURCES) $(LDFLAGS) $(DEPENDENCIES) $(INCLUDES) $(OBJETS) -o read_gpu_counters
	$(MAKE) callgraph
callgraph:
	sh create_call_graph.sh

clean:	
	rm read_gpu_counters
