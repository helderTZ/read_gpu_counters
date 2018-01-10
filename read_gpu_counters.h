#ifndef __READ_GPU_COUNTERS_H__
#define __READ_GPU_COUNTERS_H__


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
cl_platform_id platform;
cl_device_id device;
cl_context context;
cl_command_queue command_queue;
cl_program program;
cl_kernel kernel;
cl_mem a, b, c, d, e, f, g;

cl_build_status build_status;

size_t global;
size_t local;

// set affinity 
cpu_set_t my_set;

char kernel_choice[50];








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



// flexible event enums
enum increment_event_filter {
	NO_INC_FILTER										= 0,
	EU_FPU_1_PIPELINE_ACTIVE 							= 1,
	EU_SEND_PIPELINE_ACTIVE 							= 2,
	EU_FPU0_FPU1_PIPELINES_CONCURRENTLY_ACTIVE 			= 3,
	SOME_EU_PIPELINE_ACTIVE 							= 4,
	AT_LEAST_1_THREAD_LOADED_BUT_NO_EU_PIPELINE_ACTIVE 	= 5,
	THEADS_LOADED_INTEGRATER_EQUALS_MAX_THREAD_FOR_CURRENT_HW_SKU = 8
};
enum coarse_event_filter {
	NO_COARSE_FILTER = 0,
	VS_THREAD_FILTER = 1,
	HS_THREAD_FILTER = 2,
	DS_THREAD_FILTER = 3,
	GS_THREAD_FILTER = 4,
	PS_THREAD_FILTER = 5,
	TS_THREAD_FITLER = 6,
	ROW_EQUALS_0 = 7,
	ROW_EQUALS_1 = 8
};
enum fine_event_filter {
	NO_FINE_FILTER											= 0,
	CYCLES_WHERE_HYBRID_INSTRUCTONS_ARE_BEING_EXECUTED 		= 1,
	CYCLES_WHERE_TERNARY_INSTRUCTIONS_ARE_BEING_EXECUTED 	= 2,
	CYCLES_WHERE_BINARY_INSTRUCTIONS_ARE_BEING_EXECUTED 	= 3,
	CYCLES_WHERE_MOV_INSTRUCTIONS_ARE_BEING_EXECUTED 		= 4,
	CYCLES_WHERE_SENDS_START_BEING_EXECUTED 				= 5,
	EU_NUM_EQUALS_0 = 7,
	EU_NUM_EQUALS_1 = 8,
	EU_NUM_EQUALS_2 = 9,
	EU_NUM_EQUALS_3 = 10
};




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

extern struct oa_format hsw_oa_formats[local_I915_OA_FORMAT_MAX];

extern struct oa_format gen8_oa_formats[local_I915_OA_FORMAT_MAX];

extern bool hsw_undefined_a_counters[45];

/* No A counters currently reserved/undefined for gen8+ so far */
extern bool gen8_undefined_a_counters[45];

extern int drm_fd;
extern int pm_fd;
extern int stream_fd;
extern uint32_t devid;
extern int card;
extern int n_eus;

extern uint64_t test_metric_set_id;

extern uint64_t timestamp_frequency;
extern uint64_t gt_max_freq_mhz;
extern enum drm_i915_oa_format test_oa_format;
extern bool *undefined_a_counters;
extern uint64_t oa_exp_1_millisec;

extern igt_render_copyfunc_t render_copy;
extern uint32_t (*read_report_ticks)(uint32_t *report, enum drm_i915_oa_format format);
extern void (*sanity_check_reports)(uint32_t *oa_report0, uint32_t *oa_report1, enum drm_i915_oa_format format);



// =================================================================
// ========================== Functions ============================
// =================================================================

long long read_tsc_start();

long long read_tsc_end();

/* read_u64_file
 * reads unsigned 64 bytes from file
 * actually reads 32 bytes and converts to 64 bits unsigned value
 * returns true if read is successful false otherwise
 * value read is in val
 */
bool read_u64_file(const char *file, uint64_t *val);

/* write_u64_file
 * writes a 64 bit unsigned value to file as a 32 bytes text string
 * returns true if write is successful false otherwise
 */
bool write_u64_file(const char *file, uint64_t val);

void __perf_close(int fd);

int __perf_open(int fd, struct drm_i915_perf_open_param *param, bool prevent_pm);

struct oa_format get_oa_format(enum drm_i915_oa_format format);

/* hsw_read_report_ticks
 * read gpu ticks from OA report
 * HASWELL is different from Gen8+
 */
uint32_t hsw_read_report_ticks(uint32_t report, enum drm_i915_oa_format format);

/* gen8_read_report_ticks
 * read gpu ticks from OA report
 * generic way for Gen8+
 */
uint32_t gen8_read_report_ticks(uint32_t *report, enum drm_i915_oa_format format);

/* gen8_read_report_clock_ratios
 * reads slice and unslice frquency from OA report
 */
uint32_t gen8_read_report_clock_ratios(uint32_t *report, uint32_t *slice_freq_mhz, uint32_t *unslice_freq_mhz);

/* gen8_read_report_reason
 * reads reason from OA report
 */
const char *gen8_read_report_reason(const uint32_t *report);

/* gen8_read_40bit_a_counter
 * reads 40 bit counter from report and returns 64bit value of the counter
 */
uint64_t gen8_read_40bit_a_counter(uint32_t *report, enum drm_i915_oa_format fmt, int a_id);

/* gen8_40bit_a_delta
 * calculates delta between two 40bit counter values
 * takes care of overflows (I think)
 */
uint64_t gen8_40bit_a_delta(uint64_t value0, uint64_t value1);

uint64_t timebase_scale(uint32_t u32_delta);

/* Returns: the largest OA exponent that will still result in a sampling period
 * less than or equal to the given @period.
 */
int max_oa_exponent_for_period_lte(uint64_t period);

/* Return: the largest OA exponent that will still result in a sampling
 * frequency greater than the given @frequency.
 */
int max_oa_exponent_for_freq_gt(uint64_t frequency);

uint64_t oa_exponent_to_ns(int exponent);

bool oa_report_is_periodic(uint32_t oa_exponent, const uint32_t *report);

void scratch_buf_memset(drm_intel_bo *bo, int width, int height, uint32_t color);

// not sure what this does or why it is needed
void scratch_buf_init(drm_intel_bufmgr *bufmgr, struct igt_buf *buf, int width, int height, uint32_t color);

void emit_report_perf_count(struct intel_batchbuffer *batch, drm_intel_bo *dst_bo, int dst_offset, uint32_t report_id);

void emit_stall_timestamp_and_rpc(struct intel_batchbuffer *batch, drm_intel_bo *dst, int timestamp_offset, int report_dst_offset, uint32_t report_id, bool rpc);

// not sure if this is necessary
bool init_sys_info(void);

/* print_reports
 * calculates deltas between two OA reports and displays them
 */
void print_reports(uint32_t *oa_report0, uint32_t *oa_report1, int fmt, long long int cpu_ticks0, long long int cpu_ticks1, uint64_t cpu_cur_freq, uint64_t gpu_cur_freq, int dump);



void test_counters_with_opencl(int dump);

/* read_i915_module_ref
 * returns a reference to the i915 module  (??)
 */
unsigned read_i915_module_ref(void);

int __i915_perf_add_config(int fd, struct drm_i915_perf_oa_config *config);

int i915_perf_add_config(int fd, struct drm_i915_perf_oa_config *config);

void i915_perf_remove_config(int fd, uint64_t config_id);

/* Registers required by userspace. This list should be maintained by
 * the OA configs developers and agreed upon with kernel developers as
 * some of the registers have bits used by the kernel (for workarounds
 * for instance) and other bits that need to be set by the OA configs.
 */
void test_whitelisted_registers_userspace_config(void);

void print_binary(int val, int len);

void send_mi_load_reg_mem(struct intel_batchbuffer *batch, uint32_t reg_address, uint32_t *memory_address, uint32_t ggtt, uint32_t async_mode);

uint32_t send_mi_store_reg_mem(struct intel_batchbuffer *batch, uint32_t reg_address, uint32_t ggtt,uint32_t pred_enable);

void write_to_flexible_eu_registers(void);






#endif
