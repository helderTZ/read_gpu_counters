#ifndef __READ_GPU_CPUNTERS_H__
#define __READ_GPU_CPUNTERS_H__


#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sched.h>

#include <CL/cl.h>

#define KNRM  "\x1B[0m"
#define KRED  "\x1B[31m"
#define KGRN  "\x1B[32m"
#define KYEL  "\x1B[33m"
#define KBLU  "\x1B[34m"
#define KMAG  "\x1B[35m"
#define KCYN  "\x1B[36m"
#define KWHT  "\x1B[37m"

//#define ARRAY_SIZE(x) (sizeof(x)/sizeof(x[0]))


// OpenCL Global vars
extern cl_platform_id platform;
extern cl_device_id device;
extern cl_context context;
extern cl_command_queue command_queue;
extern cl_program program;
extern cl_kernel kernel;
extern cl_mem a, b, c, d, e, f, g;

extern cl_build_status build_status;

extern size_t global;
extern size_t local;

// set affinity 
extern cpu_set_t my_set;

extern char kernel_choice[50];








// =================================================================
// =========================== Constants ===========================
// =================================================================



#define GEN6_MI_REPORT_PERF_COUNT ((0x28 << 23) | (3 - 2))
#define GEN8_MI_REPORT_PERF_COUNT ((0x28 << 23) | (4 - 2))

#define OAREPORT_REASON_MASK           0x3f
#define OAREPORT_REASON_SHIFT          19
#define OAREPORT_REASON_TIMER          (1<<0)
#define OAREPORT_REASON_INTERNAL       (3<<1)
#define OAREPORT_REASON_CTX_SWITCH     (1<<3)
#define OAREPORT_REASON_GO             (1<<4)
#define OAREPORT_REASON_CLK_RATIO      (1<<5)

#define GFX_OP_PIPE_CONTROL     ((3 << 29) | (3 << 27) | (2 << 24))
#define PIPE_CONTROL_CS_STALL	(1 << 20)
#define PIPE_CONTROL_GLOBAL_SNAPSHOT_COUNT_RESET	(1 << 19)
#define PIPE_CONTROL_TLB_INVALIDATE     	(1 << 18)
#define PIPE_CONTROL_SYNC_GFDT	  			(1 << 17)
#define PIPE_CONTROL_MEDIA_STATE_CLEAR  	(1 << 16)
#define PIPE_CONTROL_NO_WRITE	   			(0 << 14)
#define PIPE_CONTROL_WRITE_IMMEDIATE    	(1 << 14)
#define PIPE_CONTROL_WRITE_DEPTH_COUNT  	(2 << 14)
#define PIPE_CONTROL_WRITE_TIMESTAMP    	(3 << 14)
#define PIPE_CONTROL_DEPTH_STALL				(1 << 13)
#define PIPE_CONTROL_RENDER_TARGET_FLUSH 		(1 << 12)
#define PIPE_CONTROL_INSTRUCTION_INVALIDATE 	(1 << 11)
#define PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE   (1 << 10) /* GM45+ only */
#define PIPE_CONTROL_ISP_DIS	    	(1 << 9)
#define PIPE_CONTROL_INTERRUPT_ENABLE   (1 << 8)
#define PIPE_CONTROL_FLUSH_ENABLE       (1 << 7) /* Gen7+ only */
/* GT */
#define PIPE_CONTROL_DATA_CACHE_INVALIDATE      (1 << 5)
#define PIPE_CONTROL_VF_CACHE_INVALIDATE		(1 << 4)
#define PIPE_CONTROL_CONST_CACHE_INVALIDATE     (1 << 3)
#define PIPE_CONTROL_STATE_CACHE_INVALIDATE     (1 << 2)
#define PIPE_CONTROL_STALL_AT_SCOREBOARD		(1 << 1)
#define PIPE_CONTROL_DEPTH_CACHE_FLUSH	  		(1 << 0)
#define PIPE_CONTROL_PPGTT_WRITE				(0 << 2)
#define PIPE_CONTROL_GLOBAL_GTT_WRITE   		(1 << 2)




/* Temporarily copy i915-perf uapi here to avoid a dependency on libdrm's
 * i915_drm.h copy being updated with the i915-perf interface before this
 * test can land in i-g-t.
 *
 * TODO: remove this once the interface lands in libdrm
 */
#ifndef DRM_I915_PERF_OPEN
#define DRM_I915_PERF_OPEN		0x36
#define DRM_IOCTL_I915_PERF_OPEN	DRM_IOW(DRM_COMMAND_BASE + DRM_I915_PERF_OPEN, struct drm_i915_perf_open_param)

enum drm_i915_oa_format {
	I915_OA_FORMAT_A13 = 1,     /* HSW only */
	I915_OA_FORMAT_A29,         /* HSW only */
	I915_OA_FORMAT_A13_B8_C8,   /* HSW only */
	I915_OA_FORMAT_B4_C8,       /* HSW only */
	I915_OA_FORMAT_A45_B8_C8,   /* HSW only */
	I915_OA_FORMAT_B4_C8_A16,   /* HSW only */
	I915_OA_FORMAT_C4_B8,       /* HSW+ */

	/* Gen8+ */
	I915_OA_FORMAT_A12,
	I915_OA_FORMAT_A12_B8_C8,
	I915_OA_FORMAT_A32u40_A4u32_B8_C8,

	I915_OA_FORMAT_MAX /* non-ABI */
};

enum drm_i915_perf_property_id {
       DRM_I915_PERF_PROP_CTX_HANDLE = 1,
       DRM_I915_PERF_PROP_SAMPLE_OA,
       DRM_I915_PERF_PROP_OA_METRICS_SET,
       DRM_I915_PERF_PROP_OA_FORMAT,
       DRM_I915_PERF_PROP_OA_EXPONENT,

       DRM_I915_PERF_PROP_MAX /* non-ABI */
};

struct drm_i915_perf_open_param {
       __u32 flags;
#define I915_PERF_FLAG_FD_CLOEXEC	(1<<0)
#define I915_PERF_FLAG_FD_NONBLOCK	(1<<1)
#define I915_PERF_FLAG_DISABLED		(1<<2)

       __u32 num_properties;
       __u64 properties_ptr;
};

#define I915_PERF_IOCTL_ENABLE _IO('i', 0x0)
#define I915_PERF_IOCTL_DISABLE	_IO('i', 0x1)

struct drm_i915_perf_record_header {
       __u32 type;
       __u16 pad;
       __u16 size;
};

enum drm_i915_perf_record_type {
       DRM_I915_PERF_RECORD_SAMPLE = 1,
       DRM_I915_PERF_RECORD_OA_REPORT_LOST = 2,
       DRM_I915_PERF_RECORD_OA_BUFFER_LOST = 3,

       DRM_I915_PERF_RECORD_MAX /* non-ABI */
};
#endif /* !DRM_I915_PERF_OPEN */






/* There is no ifdef we can use for those formats :( */
enum {
	local_I915_OA_FORMAT_A12 = I915_OA_FORMAT_C4_B8 + 1,
	local_I915_OA_FORMAT_A12_B8_C8 = I915_OA_FORMAT_C4_B8 + 2,
	local_I915_OA_FORMAT_A32u40_A4u32_B8_C8 = I915_OA_FORMAT_C4_B8 + 3,
};

#define local_I915_OA_FORMAT_MAX (local_I915_OA_FORMAT_A32u40_A4u32_B8_C8 + 1)

#ifndef DRM_IOCTL_I915_PERF_ADD_CONFIG

#define DRM_I915_PERF_ADD_CONFIG	0x37
#define DRM_I915_PERF_REMOVE_CONFIG	0x38

#define DRM_IOCTL_I915_PERF_ADD_CONFIG	DRM_IOW(DRM_COMMAND_BASE + DRM_I915_PERF_ADD_CONFIG, struct drm_i915_perf_oa_config)
#define DRM_IOCTL_I915_PERF_REMOVE_CONFIG	DRM_IOW(DRM_COMMAND_BASE + DRM_I915_PERF_REMOVE_CONFIG, __u64)


/**
 * Structure to upload perf dynamic configuration into the kernel.
 */
struct drm_i915_perf_oa_config {
	/** String formatted like "%08x-%04x-%04x-%04x-%012x" */
	char uuid[36];

	__u32 n_mux_regs;
	__u32 n_boolean_regs;
	__u32 n_flex_regs;

	__u64 mux_regs_ptr;
	__u64 boolean_regs_ptr;
	__u64 flex_regs_ptr;
};

#endif /* !DRM_IOCTL_I915_PERF_ADD_CONFIG */








// =================================================================
// ===================== Global vars / structs =====================
// =================================================================


struct accumulator {
#define MAX_RAW_OA_COUNTERS 62
	enum drm_i915_oa_format format;

	uint64_t deltas[MAX_RAW_OA_COUNTERS];
};

struct oa_format {
	const char *name;
	size_t size;
	int a40_high_off; /* bytes */
	int a40_low_off;
	int n_a40;
	int a_off;
	int n_a;
	int first_a;
	int b_off;
	int n_b;
	int c_off;
	int n_c;
};

static struct oa_format hsw_oa_formats[local_I915_OA_FORMAT_MAX] = {
	[I915_OA_FORMAT_A13] = { /* HSW only */
		"A13", .size = 64,
		.a_off = 12, .n_a = 13, },
	[I915_OA_FORMAT_A29] = { /* HSW only */
		"A29", .size = 128,
		.a_off = 12, .n_a = 29, },
	[I915_OA_FORMAT_A13_B8_C8] = { /* HSW only */
		"A13_B8_C8", .size = 128,
		.a_off = 12, .n_a = 13,
		.b_off = 64, .n_b = 8,
		.c_off = 96, .n_c = 8, },
	[I915_OA_FORMAT_A45_B8_C8] = { /* HSW only */
		"A45_B8_C8", .size = 256,
		.a_off = 12,  .n_a = 45,
		.b_off = 192, .n_b = 8,
		.c_off = 224, .n_c = 8, },
	[I915_OA_FORMAT_B4_C8] = { /* HSW only */
		"B4_C8", .size = 64,
		.b_off = 16, .n_b = 4,
		.c_off = 32, .n_c = 8, },
	[I915_OA_FORMAT_B4_C8_A16] = { /* HSW only */
		"B4_C8_A16", .size = 128,
		.b_off = 16, .n_b = 4,
		.c_off = 32, .n_c = 8,
		.a_off = 60, .n_a = 16, .first_a = 29, },
	[I915_OA_FORMAT_C4_B8] = { /* HSW+ (header differs from HSW-Gen8+) */
		"C4_B8", .size = 64,
		.c_off = 16, .n_c = 4,
		.b_off = 28, .n_b = 8 },
};

static struct oa_format gen8_oa_formats[local_I915_OA_FORMAT_MAX] = {
	[local_I915_OA_FORMAT_A12] = {
		"A12", .size = 64,
		.a_off = 12, .n_a = 12, .first_a = 7, },
	[local_I915_OA_FORMAT_A12_B8_C8] = {
		"A12_B8_C8", .size = 128,
		.a_off = 12, .n_a = 12,
		.b_off = 64, .n_b = 8,
		.c_off = 96, .n_c = 8, .first_a = 7, },
	[local_I915_OA_FORMAT_A32u40_A4u32_B8_C8] = {
		"A32u40_A4u32_B8_C8", .size = 256,
		.a40_high_off = 160, .a40_low_off = 16, .n_a40 = 32,
		.a_off = 144, .n_a = 4, .first_a = 32,
		.b_off = 192, .n_b = 8,
		.c_off = 224, .n_c = 8, },
	[I915_OA_FORMAT_C4_B8] = {
		"C4_B8", .size = 64,
		.c_off = 16, .n_c = 4,
		.b_off = 32, .n_b = 8, },
};


static bool hsw_undefined_a_counters[45] = {
	[4] = true,
	[6] = true,
	[9] = true,
	[11] = true,
	[14] = true,
	[16] = true,
	[19] = true,
	[21] = true,
	[24] = true,
	[26] = true,
	[29] = true,
	[31] = true,
	[34] = true,
	[43] = true,
	[44] = true,
};

/* No A counters currently reserved/undefined for gen8+ so far */
static bool gen8_undefined_a_counters[45];

static int drm_fd = -1;
static int pm_fd = -1;
static int stream_fd = -1;
static uint32_t devid;
static int card = -1;
static int n_eus;

static uint64_t test_metric_set_id = UINT64_MAX;

static uint64_t timestamp_frequency = 12500000;
static uint64_t gt_max_freq_mhz = 0;
static enum drm_i915_oa_format test_oa_format;
static bool *undefined_a_counters;
static uint64_t oa_exp_1_millisec;

static igt_render_copyfunc_t render_copy = NULL;
static uint32_t (*read_report_ticks)(uint32_t *report, enum drm_i915_oa_format format);
static void (*sanity_check_reports)(uint32_t *oa_report0, uint32_t *oa_report1, enum drm_i915_oa_format format);



// =================================================================
// ========================== Functions ============================
// =================================================================

/*inline*/ long long read_tsc_start(){
	uint64_t d;
	uint64_t a;
	asm __volatile__ (
		"CPUID;"
		"rdtsc;"
		"movq %%rdx, %0;"
		"movq %%rax, %1;"
		: "=r" (d), "=r" (a)
		:
		: "%rax", "%rbx","%rcx", "%rdx"
	);

	return ((long long)d << 32 | a);
}

/*inline*/ long long read_tsc_end(){
	uint64_t d;
	uint64_t a;
	asm __volatile__ ("rdtscp;"
		"movq %%rdx, %0;"
		"movq %%rax, %1;"
		"CPUID;"
		: "=r" (d), "=r" (a)
		:
		: "%rax", "%rbx","%rcx", "%rdx"
	);

	return ((long long)d << 32 | a);
}





/* read_u64_file
 * reads unsigned 64 bytes from file
 * actually reads 32 bytes and converts to 64 bits unsigned value
 * returns true if read is successful false otherwise
 * value read is in val
 */
static bool read_u64_file(const char *file, uint64_t *val) {

	char buf[32];
	int fd, n;

	fd = open(file, O_RDONLY);
	if (fd < 0) return false;

	n = read(fd, buf, sizeof(buf) - 1);

	if (n < 0) return false;

	close(fd);

	buf[n] = '\0';
	*val = strtoull(buf, NULL, 0);

	return true;
}


/* write_u64_file
 * writes a 64 bit unsigned value to file as a 32 bytes text string
 * returns true if write is successful false otherwise
 */
static bool write_u64_file(const char *file, uint64_t val) {

	char buf[32];
	int fd, len, ret;

	fd = open(file, O_WRONLY);
	if (fd < 0) return false;

	len = snprintf(buf, sizeof(buf), "%llu", val);
	if (len < 0) return false;

	ret = write(fd, buf, len);
	if (ret != len) return false;

	close(fd);

	return true;

}


static void __perf_close(int fd) {

	close(fd);
	stream_fd = -1;

	if (pm_fd >= 0) {
		close(pm_fd);
		pm_fd = -1;
	}
}

static int __perf_open(int fd, struct drm_i915_perf_open_param *param, bool prevent_pm) {

	int ret;
	int32_t pm_value = 0;

	if (stream_fd >= 0) __perf_close(stream_fd);

	if (pm_fd >= 0) {
		close(pm_fd);
		pm_fd = -1;
	}

	ret = igt_ioctl(fd, DRM_IOCTL_I915_PERF_OPEN, param);

	if (prevent_pm) {
		pm_fd = open("/dev/cpu_dma_latency", O_RDWR);
		write(pm_fd, &pm_value, sizeof(pm_value));
	}

	return ret;

}



static struct oa_format get_oa_format(enum drm_i915_oa_format format) 
{
	if (IS_HASWELL(devid))
		return hsw_oa_formats[format];

	return gen8_oa_formats[format];
}

/* hsw_read_report_ticks
 * read gpu ticks from OA report
 * HASWELL is different from Gen8+
 */
static uint32_t hsw_read_report_ticks(uint32_t report, enum drm_i915_oa_format format) {

	uint32_t *c = (uint32_t *) ( ( (uint8_t *) report) + get_oa_format(format).c_off);

	if (get_oa_format(format).n_c != 0)
		return c[2];
	else
		return (uint32_t) -1;
}

/* gen8_read_report_ticks
 * read gpu ticks from OA report
 * generic way for Gen8+
 */
static uint32_t gen8_read_report_ticks(uint32_t *report, enum drm_i915_oa_format format) {

	return report[3];
}


/* gen8_read_report_clock_ratios
 * reads slice and unslice frquency from OA report
 */
static uint32_t gen8_read_report_clock_ratios(uint32_t *report, uint32_t *slice_freq_mhz, uint32_t *unslice_freq_mhz) {

	uint32_t unslice_freq = report[0] & 0x1ff;
	uint32_t slice_freq_low = (report[0] >> 25) & 0x7f;
	uint32_t slice_freq_high = (report[0] >> 9) & 0x3;
	uint32_t slice_freq = slice_freq_low | (slice_freq_high << 7);

	*slice_freq_mhz = (slice_freq * 16666) / 1000;
	*unslice_freq_mhz = (unslice_freq * 16666) / 1000;
}


/* gen8_read_report_reason
 * reads reason from OA report
 */
static const char *gen8_read_report_reason(const uint32_t *report)
{
	uint32_t reason = ((report[0] >> OAREPORT_REASON_SHIFT) &
			   OAREPORT_REASON_MASK);

	if (reason & (1<<0))
		return "timer";
	else if (reason & (1<<1))
	      return "internal trigger 1";
	else if (reason & (1<<2))
	      return "internal trigger 2";
	else if (reason & (1<<3))
	      return "context switch";
	else if (reason & (1<<4))
	      return "GO 1->0 transition (enter RC6)";
	else if (reason & (1<<5))
		return "[un]slice clock ratio change";
	else
		return "unknown";
}


/* gen8_read_40bit_a_counter
 * reads 40 bit counter from report and returns 64bit value of the counter
 */
static uint64_t gen8_read_40bit_a_counter(uint32_t *report, enum drm_i915_oa_format fmt, int a_id) {

	struct oa_format format = get_oa_format(fmt);
	uint8_t *a40_high = ( ((uint8_t *)report) + format.a40_high_off );
	uint32_t *a40_low = (uint32_t *)( ((uint8_t *)report) + format.a40_low_off);
	uint64_t high = (uint64_t)(a40_high[a_id]) << 32;

	return a40_low[a_id] | high;
}


/* gen8_40bit_a_delta
 * calculates delta between two 40bit counter values
 * takes care of overflows (I think)
 */
static uint64_t gen8_40bit_a_delta(uint64_t value0, uint64_t value1) {

	if (value0 > value1)
		return (1ULL << 40) + value1 - value0;
	else
		return value1 - value0;
}




static uint64_t timebase_scale(uint32_t u32_delta) {

	return ((uint64_t)u32_delta * NSEC_PER_SEC) / timestamp_frequency;
}



/* Returns: the largest OA exponent that will still result in a sampling period
 * less than or equal to the given @period.
 */
static int max_oa_exponent_for_period_lte(uint64_t period) 
{
	/* NB: timebase_scale() takes a uint32_t and an exponent of 30
	 * would already represent a period of ~3 minutes so there's
	 * really no need to consider higher exponents.
	 */
	for (int i = 0; i < 30; i++) {
		uint64_t oa_period = timebase_scale(2 << i);

		if (oa_period > period)
			return max(0, i - 1);
	}

	return -1;
}

/* Return: the largest OA exponent that will still result in a sampling
 * frequency greater than the given @frequency.
 */
static int max_oa_exponent_for_freq_gt(uint64_t frequency) {
	uint64_t period = NSEC_PER_SEC / frequency;

	if (period == 0) return -1;

	return max_oa_exponent_for_period_lte(period - 1);
}

static uint64_t oa_exponent_to_ns(int exponent) {
       return 1000000000ULL * (2ULL << exponent) / timestamp_frequency;
}


static bool oa_report_is_periodic(uint32_t oa_exponent, const uint32_t *report) {

	if (IS_HASWELL(devid)) {
		/* For Haswell we don't have a documented report reason field
		 * (though empirically report[0] bit 10 does seem to correlate
		 * with a timer trigger reason) so we instead infer which
		 * reports are timer triggered by checking if the least
		 * significant bits are zero and the exponent bit is set.
		 */
		uint32_t oa_exponent_mask = (1 << (oa_exponent + 1)) - 1;

		if ((report[1] & oa_exponent_mask) == (1 << oa_exponent))
			return true;
	} else {
		if ((report[0] >> OAREPORT_REASON_SHIFT) & OAREPORT_REASON_TIMER)
			return true;
	}

	return false;
}



static void scratch_buf_memset(drm_intel_bo *bo, int width, int height, uint32_t color) {

	int ret;

	ret = drm_intel_bo_map(bo, true /* writable */);

	for (int i = 0; i < width * height; i++) {
		( (uint32_t *) bo->virtual )[i] = color;
	}

	drm_intel_bo_unmap(bo);
}

// not sure what this does or why it is needed
static void scratch_buf_init(drm_intel_bufmgr *bufmgr, struct igt_buf *buf, int width, int height, uint32_t color) {

	size_t stride = width * 4;
	size_t size = stride * height;
	drm_intel_bo *bo = drm_intel_bo_alloc(bufmgr, "", size, 4096);

	scratch_buf_memset(bo, width, height, color);

	buf->bo = bo;
	buf->stride = stride;
	buf->tiling = I915_TILING_NONE;
	buf->size = size;
}




static void emit_report_perf_count(struct intel_batchbuffer *batch,
		       					   drm_intel_bo *dst_bo,
		       					   int dst_offset,
		       					   uint32_t report_id) {

	if (IS_HASWELL(devid)) {
		BEGIN_BATCH(3, 1);
		OUT_BATCH(GEN6_MI_REPORT_PERF_COUNT);
		OUT_RELOC(dst_bo, I915_GEM_DOMAIN_INSTRUCTION, I915_GEM_DOMAIN_INSTRUCTION, dst_offset);
		OUT_BATCH(report_id);
		ADVANCE_BATCH();
	} else {
		/* XXX: NB: n dwords arg is actually magic since it internally
		 * automatically accounts for larger addresses on gen >= 8...
		 */
		BEGIN_BATCH(3, 1);
		OUT_BATCH(GEN8_MI_REPORT_PERF_COUNT);
		OUT_RELOC(dst_bo, I915_GEM_DOMAIN_INSTRUCTION, I915_GEM_DOMAIN_INSTRUCTION, dst_offset);
		OUT_BATCH(report_id);
		ADVANCE_BATCH();
	}
}


static void emit_stall_timestamp_and_rpc(struct intel_batchbuffer *batch,
										 drm_intel_bo *dst,
										 int timestamp_offset,
										 int report_dst_offset,
										 uint32_t report_id,
										 bool rpc) {

	uint32_t pipe_ctl_flags = (PIPE_CONTROL_CS_STALL | 
								PIPE_CONTROL_RENDER_TARGET_FLUSH | 
								PIPE_CONTROL_WRITE_TIMESTAMP);

	if(rpc) {
		if (intel_gen(devid) >= 8) {
			BEGIN_BATCH(5, 1);
			OUT_BATCH(GFX_OP_PIPE_CONTROL | (6 - 2));
			OUT_BATCH(pipe_ctl_flags);
			OUT_RELOC(dst, I915_GEM_DOMAIN_INSTRUCTION, I915_GEM_DOMAIN_INSTRUCTION, timestamp_offset);
			OUT_BATCH(0); /* imm lower */
			OUT_BATCH(0); /* imm upper */
			ADVANCE_BATCH();
		} else {
			BEGIN_BATCH(5, 1);
			OUT_BATCH(GFX_OP_PIPE_CONTROL | (5 - 2));
			OUT_BATCH(pipe_ctl_flags);
			OUT_RELOC(dst, I915_GEM_DOMAIN_INSTRUCTION, I915_GEM_DOMAIN_INSTRUCTION, timestamp_offset);
			OUT_BATCH(0); /* imm lower */
			OUT_BATCH(0); /* imm upper */
			ADVANCE_BATCH();
		}
	}

	emit_report_perf_count(batch, dst, report_dst_offset, report_id);
}



// not sure if this is necessary
static bool init_sys_info(void) {

	const char *test_set_name = NULL;
	const char *test_set_uuid = NULL;
	char buf[256];

	timestamp_frequency = 12500000;

	// set up function pointers

	if (IS_HASWELL(devid)) {
		/* We don't have a TestOa metric set for Haswell so use
		 * RenderBasic
		 */
		test_set_name = "RenderBasec";
		test_set_uuid = "403d8832-1a27-4aa6-a64e-f5389ce7b212";
		test_oa_format = I915_OA_FORMAT_A45_B8_C8;
		undefined_a_counters = hsw_undefined_a_counters;
		read_report_ticks = hsw_read_report_ticks;
		//sanity_check_reports = hsw_sanity_check_render_basic_reports;

		if      (intel_gt(devid) == 0) n_eus = 10;
		else if (intel_gt(devid) == 1) n_eus = 20;
		else if (intel_gt(devid) == 2) n_eus = 40;
		else                           return false;
	}
	else {

		drm_i915_getparam_t gp;

		test_set_name = "TestOa";
		test_oa_format = local_I915_OA_FORMAT_A32u40_A4u32_B8_C8;
		undefined_a_counters = gen8_undefined_a_counters;
		read_report_ticks = gen8_read_report_ticks;
		//sanity_check_reports = gen8_sanity_check_test_oa_reports;

		if (IS_BROADWELL(devid)) {
			test_set_uuid = "d6de6f55-e526-4f79-a6a6-d7315c09044e";
		} else if (IS_CHERRYVIEW(devid)) {
			test_set_uuid = "4a534b07-cba3-414d-8d60-874830e883aa";
		} else if (IS_SKYLAKE(devid)) {
			switch (intel_gt(devid)) {
			case 1:
				test_set_uuid = "1651949f-0ac0-4cb1-a06f-dafd74a407d1";
				break;
			case 2:
				test_set_uuid = "2b985803-d3c9-4629-8a4f-634bfecba0e8";
				break;
			case 3:
				test_set_uuid = "882fa433-1f4a-4a67-a962-c741888fe5f5";
				break;
			default:
				printf("unsupported Skylake GT size\n");
				return false;
			}
			timestamp_frequency = 12000000;
		} else if (IS_BROXTON(devid)) {
			test_set_uuid = "5ee72f5c-092f-421e-8b70-225f7c3e9612";
			timestamp_frequency = 19200000;
		} else if (IS_KABYLAKE(devid)) {
			switch (intel_gt(devid)) {
			case 1:
				test_set_uuid = "baa3c7e4-52b6-4b85-801e-465a94b746dd";
				break;
			case 2:
				test_set_uuid = "f1792f32-6db2-4b50-b4b2-557128f1688d";
				break;
			default:
				printf("unsupported Kabylake GT size\n");
				return false;
			}
			timestamp_frequency = 12000000;
		} else if (IS_GEMINILAKE(devid)) {
			test_set_uuid = "dd3fd789-e783-4204-8cd0-b671bbccb0cf";
			timestamp_frequency = 19200000;
		} else if (IS_COFFEELAKE(devid)) {
			switch (intel_gt(devid)) {
			case 1:
				test_set_uuid = "74fb4902-d3d3-4237-9e90-cbdc68d0a446";
				break;
			default:
				printf("unsupported Cannonlake GT size\n");
				return false;
			}
			timestamp_frequency = 12000000;
		} else {
			printf("unsupported GT\n");
			return false;
		}

		gp.param = I915_PARAM_EU_TOTAL;
		gp.value = &n_eus;
		do_ioctl(drm_fd, DRM_IOCTL_I915_GETPARAM, &gp);
	}

	printf("%s metric set UUID = %s\n", test_set_name, test_set_uuid);

	oa_exp_1_millisec = max_oa_exponent_for_period_lte(1000000);

	snprintf(buf, sizeof(buf), "/sys/class/drm/card%d/metrics/%s/id", card, test_set_uuid);

	return read_u64_file(buf, &test_metric_set_id);
}


/* print_reports
 * calculates deltas between two OA reports and displays them
 */
static void print_reports(uint32_t *oa_report0, uint32_t *oa_report1, int fmt, long long int cpu_ticks0, long long int cpu_ticks1, uint64_t cpu_cur_freq, uint64_t gpu_cur_freq, int dump) {

	FILE *f_output = NULL;
	struct oa_format format = get_oa_format(fmt);
	uint32_t gpu_ticks0;
	uint32_t gpu_ticks1;

	if (dump) {
		f_output = fopen("counters.csv", "a");
	}

	int i;
	if ((size_t) ftell(f_output) == 0 && dump) {
		fprintf(f_output, "TIMESTAMP\tGPU_TICKS\tCPU_TICKS\tCTX_ID\tSLICE_CLK[mhz]\tUNSLICE_CLK[mhz]\tGPU_CLK[mhz]\tCPU_CLK[khz]\tGPU_TIME[s]\tCPU_TIME[s]\tREASON\t");
		for(i=0; i<format.n_a40; i++) {
			if (undefined_a_counters[i]) continue; 
			else fprintf(f_output, "A%d\t", i);
		}
		for(i=0; i<format.n_a; i++) {
			int a_id = format.first_a + i;
			if (undefined_a_counters[a_id]) continue;
			else fprintf(f_output, "A%d\t", a_id);
		}
		for(i=0; i<format.n_b; i++)
			fprintf(f_output, "B%d\t", i);
		for(i=0; i<format.n_c; i++)
			fprintf(f_output, "C%d\t", i);
		fprintf(f_output, "\n");
	}

	// timestamp
	printf("TIMESTAMP: 1st = %u, 2nd = %u, delta = %u\n", oa_report0[1], oa_report1[1], oa_report1[1] - oa_report0[1]);
	if (dump) fprintf(f_output, "%u\t", oa_report1[1]);

	// gpu ticks
	if (IS_HASWELL(devid) && format.n_c == 0) {
		printf("HASWELL does no support GPU_TICKS\n");	//this doesnt make sense, they have a separate function for reading this, wth ????
	} else {
		gpu_ticks0 = read_report_ticks(oa_report0, fmt);
		gpu_ticks1 = read_report_ticks(oa_report1, fmt);

		printf("CLOCK TICKS: 1st = %u, 2nd = %u, delta = %u\n", gpu_ticks0, gpu_ticks1, gpu_ticks1 - gpu_ticks0);
		if (dump) fprintf(f_output, "%u\t", gpu_ticks1-gpu_ticks0);
		if (dump) fprintf(f_output, "%u\t", cpu_ticks1-cpu_ticks0);

	}

	if (intel_gen(devid) >= 8) {

		uint32_t slice_freq0, slice_freq1, unslice_freq0, unslice_freq1;
		const char *reason0 = gen8_read_report_reason(oa_report0);
		const char *reason1 = gen8_read_report_reason(oa_report1);
		char reasons[20];
		sprintf(reasons, "%s,%s", reason0, reason1);

		// context id
		printf("CTX_ID: 1st = %u, 2nd = %u\n", oa_report0[2], oa_report1[2]);
		if (dump) fprintf(f_output, "%u\t", oa_report1[2]);

		// frequency
		gen8_read_report_clock_ratios(oa_report0, &slice_freq0, &unslice_freq0);
		gen8_read_report_clock_ratios(oa_report1, &slice_freq1, &unslice_freq1);
		printf("SLICE CLK: 1st = %u MHz, 2nd = %u MHz ,delta = %d\n", slice_freq0, slice_freq1, (int)slice_freq1 - (int)slice_freq0);
		printf("USLICE CLK: 1st = %u MHz, 2nd = %u MHz ,delta = %d\n", unslice_freq0, unslice_freq1, (int)unslice_freq1 - (int)unslice_freq0);

		// reason
		printf("REASONS: \"%s\", 2nd = \"%s\"\n", reason0, reason1);

		// have comma as decimal separator instead of dot
		float gpu_time_s = (float)(gpu_ticks1-gpu_ticks0) * (1/((float)gpu_cur_freq*1e6));
		float cpu_time_s = (float)(cpu_ticks1-cpu_ticks0) * (1/((float)cpu_cur_freq*1e3));
		char gpu_time_string[20];
		char cpu_time_string[20];
		sprintf(gpu_time_string, "%f", gpu_time_s);
		sprintf(cpu_time_string, "%f", cpu_time_s);
		for(i = 0; i< 20; i++) {
			if (gpu_time_string[i] == '.') gpu_time_string[i] = ',';
			if (cpu_time_string[i] == '.') cpu_time_string[i] = ',';
		}

		if (dump) fprintf(f_output, "%u\t", slice_freq1);
		if (dump) fprintf(f_output, "%u\t", unslice_freq1);
		if (dump) fprintf(f_output, "%u\t", gpu_cur_freq);
		if (dump) fprintf(f_output, "%u\t", cpu_cur_freq);
		if (dump) fprintf(f_output, "%s\t", gpu_time_string);
		if (dump) fprintf(f_output, "%s\t", cpu_time_string);
		if (dump) fprintf(f_output, "%s\t", reasons);

	}


	// Gen8+ 40bit A counters
	for(int j = 0; j < format.n_a40; j++) {
		uint64_t value0 = gen8_read_40bit_a_counter(oa_report0, fmt, j);
		uint64_t value1 = gen8_read_40bit_a_counter(oa_report1, fmt, j);
		uint64_t delta = gen8_40bit_a_delta(value0, value1);

		if (undefined_a_counters[j]) continue;

		printf("A%-2d: 1st = %lu, 2nd = %lu, delta = %lu\n", j, value0, value1, delta);
		if (dump) fprintf(f_output, "%lu\t", value1-value0);
	}

	// regular 32bit A counters
	for(int j = 0; j < format.n_a; j++) {
		uint32_t *a0 = (uint32_t *) ( ((uint8_t *)oa_report0) + format.a_off );
		uint32_t *a1 = (uint32_t *) ( ((uint8_t *)oa_report1) + format.a_off );
		uint32_t delta = a1[j] - a0[j];

		int a_id = format.first_a + j;
		if (undefined_a_counters[a_id]) continue;

		printf("A%-2d: 1st = %u, 2nd = %u, delta = %u\n", a_id, a0[j], a1[j], delta);
		if (dump) fprintf(f_output, "%u\t", a1[j]-a0[j]);
	}

	// B counters
	for (int j = 0; j < format.n_b; j++) {
		uint32_t *b0 = (uint32_t *) ( ((uint8_t *)oa_report0) + format.b_off );
		uint32_t *b1 = (uint32_t *) ( ((uint8_t *)oa_report1) + format.b_off );
		uint32_t delta = b1[j] - b0[j];

		printf("B%-2d: 1st = %u, 2nd = %u, delta = %u\n", j, b0[j], b1[j], delta);
		if (dump) fprintf(f_output, "%u\t", b1[j]-b0[j]);
	}

	// C counters
	for (int j = 0; j < format.n_c; j++) {
		uint32_t *c0 = (uint32_t *) ( ((uint8_t *)oa_report0) + format.c_off );
		uint32_t *c1 = (uint32_t *) ( ((uint8_t *)oa_report1) + format.c_off );
		uint32_t delta = c1[j] - c0[j];

		printf("C%-2d: 1st = %u, 2nd = %u, delta = %u\n", j, c0[j], c1[j], delta);
		if (dump) fprintf(f_output, "%lu\t", c1[j]- c0[j]);
	}

	

	if (dump) {
		fprintf(f_output, "\n");
		fclose(f_output);
	}

}






static void test_counters_with_opencl_one_context(int dump) {

	uint64_t properties[] = {

		DRM_I915_PERF_PROP_CTX_HANDLE, UINT64_MAX,

		/* no samples, but we have to specify at least one sample property */
		DRM_I915_PERF_PROP_SAMPLE_OA,  true,

		/* OA unit configuration */
		DRM_I915_PERF_PROP_OA_METRICS_SET, test_metric_set_id,
		DRM_I915_PERF_PROP_OA_FORMAT, test_oa_format

		/* Note: no OA exponent specified in this case */
	};

	struct drm_i915_perf_open_param param = {
		.flags = I915_PERF_FLAG_FD_CLOEXEC,
		.num_properties = sizeof(properties) / 16,
		.properties_ptr = (uintptr_t) properties
	};

	drm_intel_bufmgr *bufmgr;
	drm_intel_context *context;
	struct intel_batchbuffer *batch;
	struct igt_buf src[3], dst[3];
	drm_intel_bo *bo;
	uint32_t *report0_32, *report1_32;
	int width = 800;
	int height = 600;
	uint32_t ctx_id = 0xffffffff;	// invalid id
	int ret;
	long long int cpu_ticks0, cpu_ticks1;

	bufmgr = drm_intel_bufmgr_gem_init(drm_fd, 4096);
	drm_intel_bufmgr_gem_enable_reuse(bufmgr);

	for(int i = 0; i < ARRAY_SIZE(src); i++) {
		scratch_buf_init(bufmgr, &src[i], width, height, 0xff0000ff);
		scratch_buf_init(bufmgr, &dst[i], width, height, 0x00ff00ff);
	}

	batch = intel_batchbuffer_alloc(bufmgr, devid);

	context = drm_intel_gem_context_create(bufmgr);

	ret = drm_intel_gem_context_get_id(context, &ctx_id);

	properties[1] = ctx_id;

	intel_batchbuffer_flush_with_context(batch, context);

	scratch_buf_memset(src[0].bo, width, height, 0xff0000ff);
	scratch_buf_memset(dst[0].bo, width, height, 0x00ff00ff);

	stream_fd = __perf_open(drm_fd, &param, false);

	bo = drm_intel_bo_alloc(bufmgr, "mi_rpc dest bo", 4096, 64);

	ret = drm_intel_bo_map(bo, true /* write enable */);

	emit_report_perf_count(batch,
							bo,
							0,  		 /* report dst offset */
							0xdeadbeef); /* report id */ 

	/* Explicitly flush here (even though the render_copy() call
	 * will itself flush before/after the copy) to clarify that
	 * that the PIPE_CONTROL + MI_RPC commands will be in a
	 * separate batch from the copy.
	 */
	intel_batchbuffer_flush_with_context(batch, context);

	cpu_ticks0 = read_tsc_start();

	// do work
    ret = clEnqueueNDRangeKernel(command_queue, kernel, 1, NULL, &global, &local, 0, NULL, NULL);
    clFlush(command_queue);
    clFinish(command_queue);

    cpu_ticks1 = read_tsc_end();

	/* Another redundant flush to clarify batch bo is free to reuse */
	intel_batchbuffer_flush_with_context(batch, context);

	emit_report_perf_count(batch,
							bo,
							256,   		 /* report dst offset */
							0xbeefbeef); /* report id */

	ret = drm_intel_bo_map(bo, false /* write enable */);

	report0_32 = bo->virtual;

	report1_32 = report0_32 + 64;

	// read cpu frequency
	uint64_t cpu_cur_freq;
	int cur_cpu = 0;
	char buf[512];
	snprintf(buf, sizeof(buf), "/sys/devices/system/cpu/cpu%u/cpufreq/scaling_cur_freq", cur_cpu);
	ret = read_u64_file(buf, &cpu_cur_freq);

	// read gpu frequency
	uint64_t gpu_cur_freq;
	snprintf(buf, sizeof(buf), "/sys/class/drm/card%d/gt_cur_freq_mhz", card);
	ret = read_u64_file(buf, &gpu_cur_freq);

	print_reports(report0_32, report1_32, test_oa_format, cpu_ticks0, cpu_ticks1, cpu_cur_freq, gpu_cur_freq, dump);

	for (int i = 0; i < ARRAY_SIZE(src); i++) {
		drm_intel_bo_unreference(src[i].bo);
		drm_intel_bo_unreference(dst[i].bo);
	}

	drm_intel_bo_unmap(bo);
	drm_intel_bo_unreference(bo);
	intel_batchbuffer_free(batch);
	drm_intel_gem_context_destroy(context);
	drm_intel_bufmgr_destroy(bufmgr);
	__perf_close(stream_fd);

}



static void test_counters_with_opencl(int dump) {

	uint64_t properties[] = {

		DRM_I915_PERF_PROP_CTX_HANDLE, UINT64_MAX,

		/* no samples, but we have to specify at least one sample property */
		DRM_I915_PERF_PROP_SAMPLE_OA,  true,

		/* OA unit configuration */
		DRM_I915_PERF_PROP_OA_METRICS_SET, test_metric_set_id,
		DRM_I915_PERF_PROP_OA_FORMAT, test_oa_format

		/* Note: no OA exponent specified in this case */
	};

	struct drm_i915_perf_open_param param = {
		.flags = I915_PERF_FLAG_FD_CLOEXEC,
		.num_properties = sizeof(properties) / 16,
		.properties_ptr = (uintptr_t) properties
	};

	drm_intel_bufmgr *bufmgr;
	drm_intel_context *context0, *context1;
	struct intel_batchbuffer *batch;
	struct igt_buf src[3], dst[3];
	drm_intel_bo *bo;
	uint32_t *report0_32, *report1_32;
	int width = 800;
	int height = 600;
	uint32_t ctx_id = 0xffffffff;	// invalid id
	int ret;
	long long int cpu_ticks0, cpu_ticks1;

	bufmgr = drm_intel_bufmgr_gem_init(drm_fd, 4096);
	drm_intel_bufmgr_gem_enable_reuse(bufmgr);

	for(int i = 0; i < ARRAY_SIZE(src); i++) {
		scratch_buf_init(bufmgr, &src[i], width, height, 0xff0000ff);
		scratch_buf_init(bufmgr, &dst[i], width, height, 0x00ff00ff);
	}

	batch = intel_batchbuffer_alloc(bufmgr, devid);

	context0 = drm_intel_gem_context_create(bufmgr);
	context1 = drm_intel_gem_context_create(bufmgr);

	ret = drm_intel_gem_context_get_id(context0, &ctx_id);

	properties[1] = ctx_id;

	intel_batchbuffer_flush_with_context(batch, context0);

	scratch_buf_memset(src[0].bo, width, height, 0xff0000ff);
	scratch_buf_memset(dst[0].bo, width, height, 0x00ff00ff);

	stream_fd = __perf_open(drm_fd, &param, false);

	bo = drm_intel_bo_alloc(bufmgr, "mi_rpc dest bo", 4096, 64);

	ret = drm_intel_bo_map(bo, true /* write enable */);

	emit_report_perf_count(batch,
							bo,
							0,  		 /* report dst offset */
							0xdeadbeef); /* report id */ 

	/* Explicitly flush here (even though the render_copy() call
	 * will itself flush before/after the copy) to clarify that
	 * that the PIPE_CONTROL + MI_RPC commands will be in a
	 * separate batch from the copy.
	 */
	intel_batchbuffer_flush_with_context(batch, context0);

	cpu_ticks0 = read_tsc_start();

	// do work
    ret = clEnqueueNDRangeKernel(command_queue, kernel, 1, NULL, &global, &local, 0, NULL, NULL);
    clFlush(command_queue);
    clFinish(command_queue);

    cpu_ticks1 = read_tsc_end();

	/* Another redundant flush to clarify batch bo is free to reuse */
	intel_batchbuffer_flush_with_context(batch, context0);

	emit_report_perf_count(batch,
							bo,
							256,   		 /* report dst offset */
							0xbeefbeef); /* report id */

	intel_batchbuffer_flush_with_context(batch, context1);

	ret = drm_intel_bo_map(bo, false /* write enable */);

	report0_32 = bo->virtual;

	report1_32 = report0_32 + 64;

	// read cpu frequency
	uint64_t cpu_cur_freq;
	int cur_cpu = 0;
	char buf[512];
	snprintf(buf, sizeof(buf), "/sys/devices/system/cpu/cpu%u/cpufreq/scaling_cur_freq", cur_cpu);
	ret = read_u64_file(buf, &cpu_cur_freq);

	// read gpu frequency
	uint64_t gpu_cur_freq;
	snprintf(buf, sizeof(buf), "/sys/class/drm/card%d/gt_cur_freq_mhz", card);
	ret = read_u64_file(buf, &gpu_cur_freq);

	print_reports(report0_32, report1_32, test_oa_format, cpu_ticks0, cpu_ticks1, cpu_cur_freq, gpu_cur_freq, dump);

	for (int i = 0; i < ARRAY_SIZE(src); i++) {
		drm_intel_bo_unreference(src[i].bo);
		drm_intel_bo_unreference(dst[i].bo);
	}

	drm_intel_bo_unmap(bo);
	drm_intel_bo_unreference(bo);
	intel_batchbuffer_free(batch);
	drm_intel_gem_context_destroy(context0);
	drm_intel_gem_context_destroy(context1);
	drm_intel_bufmgr_destroy(bufmgr);
	__perf_close(stream_fd);

}








static void hsw_test_single_ctx_counters(int dump) {

	// setting up necessary structs
	uint64_t properties[] = {

		DRM_I915_PERF_PROP_CTX_HANDLE, UINT64_MAX,

		/* no samples, but we have to specify at least one sample property */
		DRM_I915_PERF_PROP_SAMPLE_OA,  true,

		/* OA unit configuration */
		DRM_I915_PERF_PROP_OA_METRICS_SET, test_metric_set_id,
		DRM_I915_PERF_PROP_OA_FORMAT, test_oa_format

		/* Note: no OA exponent specified in this case */
	};
	struct drm_i915_perf_open_param param = {
		.flags = I915_PERF_FLAG_FD_CLOEXEC,
		.num_properties = sizeof(properties) / 16,
		.properties_ptr = (uintptr_t) properties
	};



	drm_intel_bufmgr *bufmgr;
	drm_intel_context *context0, *context1;
	struct intel_batchbuffer *batch;
	struct igt_buf src[3], dst[3];
	drm_intel_bo *bo;
	uint32_t *report0_32, *report1_32;
	uint64_t timestamp0_64, timestamp1_64;
	uint32_t delta_ts64, delta_oa32;
	uint64_t delta_ts64_ns, delta_oa32_ns;
	uint32_t delta_delta;
	int n_samples_written;
	int width = 800;
	int height = 600;
	uint32_t ctx_id = 0xffffffff;	// invalid id
	int ret;
	long long int cpu_ticks0, cpu_ticks1;

	bufmgr = drm_intel_bufmgr_gem_init(drm_fd, 4096);
	drm_intel_bufmgr_gem_enable_reuse(bufmgr);

	for(int i = 0; i < ARRAY_SIZE(src); i++) {
		scratch_buf_init(bufmgr, &src[i], width, height, 0xff0000ff);
		scratch_buf_init(bufmgr, &dst[i], width, height, 0x00ff00ff);
	}

	batch = intel_batchbuffer_alloc(bufmgr, devid);

	context0 = drm_intel_gem_context_create(bufmgr);
	context1 = drm_intel_gem_context_create(bufmgr);

	/* Submit some early, unmeasured, work to the context we want
	 * to measure to try and catch issues with i915-perf
	 * initializing the HW context ID for filtering.
	 *
	 * We do this because i915-perf single context filtering had
	 * previously only relied on a hook into context pinning to
	 * initialize the HW context ID, instead of also trying to
	 * determine the HW ID while opening the stream, in case it
	 * has already been pinned.
	 *
	 * This wasn't noticed by the previous unit test because we
	 * were opening the stream while the context hadn't been
	 * touched or pinned yet and so it worked out correctly to wait
	 * for the pinning hook.
	 *
	 * Now a buggy version of i915-perf will fail to measure
	 * anything for context0 once this initial render_copy() ends
	 * up pinning the context since there won't ever be a pinning
	 * hook callback.
	 */

	render_copy(batch, context0, &src[0], 0, 0, width, height, &dst[0], 0, 0);

	ret = drm_intel_gem_context_get_id(context0, &ctx_id);
	if (ret < 0) { printf(KRED "Error at line: %d\n" KNRM, __LINE__); exit(1); }

	properties[1] = ctx_id;

	intel_batchbuffer_flush_with_context(batch, context0);

	scratch_buf_memset(src[0].bo, width, height, 0xff0000ff);
	scratch_buf_memset(dst[0].bo, width, height, 0x00ff00ff);

	stream_fd = __perf_open(drm_fd, &param, false);

	bo = drm_intel_bo_alloc(bufmgr, "mi_rpc dest bo", 4096, 64);

	ret = drm_intel_bo_map(bo, true /* write enable */);
	if (ret < 0) { printf(KRED "Error at line: %d\n" KNRM, __LINE__); exit(1); }

	memset(bo->virtual, 0x80, 4096);
	drm_intel_bo_unmap(bo);




	//emit_stall_timestamp_and_rpc(batch,
	//							 bo,
	//							 512, /* timestamp offset */
	//							 0,   /* report dst offset */
	//							 0xdeadbeef, /* report id */
	//							 false); 
	emit_report_perf_count(batch,
							bo,
							0,
							0xdeadbeef);

	/* Explicitly flush here (even though the render_copy() call
	 * will itself flush before/after the copy) to clarify that
	 * that the PIPE_CONTROL + MI_RPC commands will be in a
	 * separate batch from the copy.
	 */
	intel_batchbuffer_flush_with_context(batch, context0);

	//render_copy(batch, context0, &src[0], 0, 0, width, height, &dst[0], 0, 0);

	/* Another redundant flush to clarify batch bo is free to reuse */
	//intel_batchbuffer_flush_with_context(batch, context0);

	/* submit two copies on the other context to avoid a false
	 * positive in case the driver somehow ended up filtering for
	 * context1
	 */
	//render_copy(batch, context1, &src[1], 0, 0, width, height, &dst[1], 0, 0);

	cpu_ticks0 = read_tsc_start();

	// do work ( I do this instead of render copy hoping this is where the workload should be)
	int ocl_ret;
    ocl_ret = clEnqueueNDRangeKernel(command_queue, kernel, 1, NULL, &global, &local, 0, NULL, NULL);
    clFlush(command_queue);
    clFinish(command_queue);

    cpu_ticks1 = read_tsc_end();

	//render_copy(batch, context1, &src[1], 0, 0, width, height, &dst[1], 0, 0);

	/* And another */
	//intel_batchbuffer_flush_with_context(batch, context1);

	//emit_stall_timestamp_and_rpc(batch,
	//							 bo,
	//							 520, /* timestamp offset */
	//							 256,   /* report dst offset */
	//							 0xbeefbeef, /* report id */
	//							 false); 
	emit_report_perf_count(batch,
							bo,
							256,
							0xbeefbeef);

	intel_batchbuffer_flush_with_context(batch, context1);

	// read cpu frequency
	uint64_t cpu_cur_freq;
	int cur_cpu = 0;
	char buf[512];
	snprintf(buf, sizeof(buf), "/sys/devices/system/cpu/cpu%u/cpufreq/scaling_cur_freq", cur_cpu);
	ret = read_u64_file(buf, &cpu_cur_freq);

	// read gpu frequency
	uint64_t gpu_cur_freq;
	snprintf(buf, sizeof(buf), "/sys/class/drm/card%d/gt_cur_freq_mhz", card);
	ret = read_u64_file(buf, &gpu_cur_freq);

	ret = drm_intel_bo_map(bo, false /* write enable */);
	if (ret < 0) { printf(KRED "Error at line: %d\n" KNRM, __LINE__); exit(1); }

	report0_32 = bo->virtual;

	printf("report_id: report0_32[0] = %#x, should be 0xdeadbeef\n", report0_32[0]);
	printf("timestamp: report0_32[1] = %d, should be 0\n", report0_32[1]);

	report1_32 = report0_32 + 64;

	printf("report_id: report1_32[0] = %#x, should be 0xbeefbeef\n", report1_32[0]);
	printf("timestamp: report1_32[1] = %d, should be 0\n", report1_32[1]);


	// PRINTS ALL COUNTERS !!!!!!!!!!!!!!
	print_reports(report0_32, report1_32, test_oa_format, cpu_ticks0, cpu_ticks1, cpu_cur_freq, gpu_cur_freq, dump);

	/* A40 == N samples written to all render targets */
	n_samples_written = report1_32[43] - report0_32[43];
	printf("n samples written = %d, should be 800*600 = %d\n", n_samples_written, width*height);

	printf("timestamp32 0 = %u\n", report0_32[1]);
	printf("timestamp32 1 = %u\n", report1_32[1]);

	timestamp0_64 = *(uint64_t *)(((uint8_t *)bo->virtual) + 512);
	timestamp1_64 = *(uint64_t *)(((uint8_t *)bo->virtual) + 520);

	printf("timestamp64 0 = %lu\n", timestamp0_64);
	printf("timestamp64 1 = %lu\n", timestamp1_64);

	delta_ts64 = timestamp1_64 - timestamp0_64;
	delta_oa32 = report1_32[1] - report0_32[1];

	/* sanity check that we can pass the delta to timebase_scale */
	printf("delta_ts64 (%lu) should be lower than %u to pass to timebase scale (%s)\n", delta_ts64, UINT32_MAX, (delta_ts64 < UINT32_MAX ? "true" : "false"));
	delta_oa32_ns = timebase_scale(delta_oa32);
	delta_ts64_ns = timebase_scale(delta_ts64);

	printf("ts32 delta = %u, = %u ns\n", delta_oa32, (unsigned)delta_oa32_ns);
	printf("ts64 delta = %u, = %u ns\n", delta_ts64, (unsigned)delta_ts64_ns);

	/* The delta as calculated via the PIPE_CONTROL timestamp or
	 * the OA report timestamps should be almost identical but
	 * allow a 320 nanoseconds margin.
	 */
	delta_delta = delta_ts64_ns > delta_oa32_ns ? (delta_ts64_ns - delta_oa32_ns) : (delta_oa32_ns - delta_ts64_ns);
	printf("Difference between deltas from PIPE_CONTROL and OA REPORT timestamp: %u (should be lower than 320 ns: %s) \n",
		delta_delta, (delta_delta < 320 ? "true" : "false"));


	for (int i = 0; i < ARRAY_SIZE(src); i++) {
		drm_intel_bo_unreference(src[i].bo);
		drm_intel_bo_unreference(dst[i].bo);
	}

	drm_intel_bo_unmap(bo);
	drm_intel_bo_unreference(bo);
	intel_batchbuffer_free(batch);
	drm_intel_gem_context_destroy(context0);
	drm_intel_gem_context_destroy(context1);
	drm_intel_bufmgr_destroy(bufmgr);
	__perf_close(stream_fd);

}





/* read_i915_module_ref
 * returns a reference to the i915 module  (??)
 */
static unsigned read_i915_module_ref(void) {

	FILE *fp = fopen("/proc/modules", "r");
	if (fp < 0) return -1;

	char *line = NULL;
	size_t line_buf_size = 0;
	int len = 0;
	unsigned ref_count;

	while ( (len = getline(&line, &line_buf_size, fp)) > 0 ) {

		// looks for line starting with "i915"
		// this line should be of the sort:
		//       i915 1552384 30 - Live 0xffffffffc07c4000
		// where the two numbers following "i915" are the mem and ref_count
		if (strncmp(line, "i915", 5) == 0) {

			unsigned long mem;
			int ret = sscanf(line + 5, "%lu %u", &mem, &ref_count);
			
			if (ret == 2) break;
			else {
				free(line);
				fclose(fp);
				return -1;
			}
		}

	}

	// getline() allocates line for us if line_buf_size == 0, which it is
	// therefore we have to free it
	free(line);
	fclose(fp);
	return ref_count;

}










static int __i915_perf_add_config(int fd, struct drm_i915_perf_oa_config *config)
{
	int ret = igt_ioctl(fd, DRM_IOCTL_I915_PERF_ADD_CONFIG, config);
	if (ret < 0)
		ret = -errno;
	return ret;
}

static int i915_perf_add_config(int fd, struct drm_i915_perf_oa_config *config)
{
	int config_id = __i915_perf_add_config(fd, config);

	printf("config_id=%i\n", config_id);
	igt_assert(config_id > 0);

	return config_id;
}

static void i915_perf_remove_config(int fd, uint64_t config_id)
{
	igt_assert_eq(igt_ioctl(fd, DRM_IOCTL_I915_PERF_REMOVE_CONFIG,
				&config_id), 0);
}




/* Registers required by userspace. This list should be maintained by
 * the OA configs developers and agreed upon with kernel developers as
 * some of the registers have bits used by the kernel (for workarounds
 * for instance) and other bits that need to be set by the OA configs.
 */
static void
test_whitelisted_registers_userspace_config(void)
{

	struct drm_i915_perf_oa_config config;
	const char *uuid = "01234567-0123-0123-0123-0123456789ab";
	uint32_t mux_regs[200];
	uint32_t b_counters_regs[200];
	uint32_t flex_regs[200];
	uint32_t i;
	uint64_t config_id;
	char path[512];
	int ret;
	const uint32_t flex[] = {
		0xe458,
		0xe558,
		0xe658,
		0xe758,
		0xe45c,
		0xe55c,
		0xe65c
	};

	snprintf(path, sizeof(path), "/sys/class/drm/card%d/metrics/%s/id", card, uuid);

	if (read_u64_file(path, &config_id))
		i915_perf_remove_config(drm_fd, config_id);

	memset(&config, 0, sizeof(config));
	memcpy(config.uuid, uuid, sizeof(config.uuid));

	/* OASTARTTRIG[1-8] */
	for (i = 0x2710; i <= 0x272c; i += 4) {
		b_counters_regs[config.n_boolean_regs * 2] = i;
		b_counters_regs[config.n_boolean_regs * 2 + 1] = 0;
		config.n_boolean_regs++;
	}
	/* OAREPORTTRIG[1-8] */
	for (i = 0x2740; i <= 0x275c; i += 4) {
		b_counters_regs[config.n_boolean_regs * 2] = i;
		b_counters_regs[config.n_boolean_regs * 2 + 1] = 0;
		config.n_boolean_regs++;
	}
	config.boolean_regs_ptr = (uintptr_t) b_counters_regs;

	if (intel_gen(devid) >= 8) {
		/* Flex EU registers, only from Gen8+. */
		for (i = 0; i < ARRAY_SIZE(flex); i++) {
			flex_regs[config.n_flex_regs * 2] = flex[i];
			flex_regs[config.n_flex_regs * 2 + 1] = 0;
			config.n_flex_regs++;
		}
		config.flex_regs_ptr = (uintptr_t) flex_regs;
	}

	/* Mux registers (too many of them, just checking bounds) */
	i = 0;

	/* NOA_WRITE */
	mux_regs[i++] = 0x9800;
	mux_regs[i++] = 0;

	if (IS_HASWELL(devid)) {
		/* Haswell specific. undocumented... */
		mux_regs[i++] = 0x9ec0;
		mux_regs[i++] = 0;

		mux_regs[i++] = 0x25100;
		mux_regs[i++] = 0;
		mux_regs[i++] = 0x2ff90;
		mux_regs[i++] = 0;
	}

	if (intel_gen(devid) >= 8) {
		/* NOA_CONFIG */
		mux_regs[i++] = 0xD04;
		mux_regs[i++] = 0;
		mux_regs[i++] = 0xD2C;
		mux_regs[i++] = 0;
		/* WAIT_FOR_RC6_EXIT */
		mux_regs[i++] = 0x20CC;
		mux_regs[i++] = 0;
	}

	/* HALF_SLICE_CHICKEN2 (shared with kernel workaround) */
	mux_regs[i++] = 0xE180;
	mux_regs[i++] = 0;

	if (IS_CHERRYVIEW(devid)) {
		/* Cherryview specific. undocumented... */
		mux_regs[i++] = 0x182300;
		mux_regs[i++] = 0;
		mux_regs[i++] = 0x1823A4;
		mux_regs[i++] = 0;
	}

	/* PERFCNT[12] */
	mux_regs[i++] = 0x91B8;
	mux_regs[i++] = 0;
	/* PERFMATRIX */
	mux_regs[i++] = 0x91C8;
	mux_regs[i++] = 0;

	config.mux_regs_ptr = (uintptr_t) mux_regs;
	config.n_mux_regs = i / 2;

	/* Create a new config */
	ret = igt_ioctl(drm_fd, DRM_IOCTL_I915_PERF_ADD_CONFIG, &config);
	if (ret > 0) printf(KGRN "[OK] Config added\n" KNRM); /* Config 0 should be used by the kernel */
	else         printf(KRED "[NOT OK] Error adding config\n" KNRM);
	config_id = ret;

	//i915_perf_remove_config(drm_fd, config_id);
}






#endif
