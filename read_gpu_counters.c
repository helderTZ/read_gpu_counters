#define _GNU_SOURCE

#include <stdlib.h>
#include <stdio.h>
#include <CL/cl.h>
#include "errors.h"

#include "igt.h"
#include "drm.h"
#include "read_gpu_counters.h"
#include "platform.h"

#include <sched.h>

/*
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
*/



struct oa_format hsw_oa_formats[local_I915_OA_FORMAT_MAX] = {
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

struct oa_format gen8_oa_formats[local_I915_OA_FORMAT_MAX] = {
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


bool hsw_undefined_a_counters[45] = {
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


bool gen8_undefined_a_counters[45];
int drm_fd = -1;
int pm_fd = -1;
int stream_fd = -1;
uint32_t devid;
int card = -1;
int n_eus;

uint64_t test_metric_set_id = UINT64_MAX;

uint64_t timestamp_frequency = 12500000;
uint64_t gt_max_freq_mhz = 0;
enum drm_i915_oa_format test_oa_format;
bool *undefined_a_counters;
uint64_t oa_exp_1_millisec;

igt_render_copyfunc_t render_copy = NULL;
uint32_t (*read_report_ticks)(uint32_t *report, enum drm_i915_oa_format format);
void (*sanity_check_reports)(uint32_t *oa_report0, uint32_t *oa_report1, enum drm_i915_oa_format format);



// =================================================================
// ========================== Functions ============================
// =================================================================

long long read_tsc_start(){
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

long long read_tsc_end(){
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
bool read_u64_file(const char *file, uint64_t *val) {

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
bool write_u64_file(const char *file, uint64_t val) {

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


void __perf_close(int fd) {

	close(fd);
	stream_fd = -1;

	if (pm_fd >= 0) {
		close(pm_fd);
		pm_fd = -1;
	}
}

int __perf_open(int fd, struct drm_i915_perf_open_param *param, bool prevent_pm) {

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



struct oa_format get_oa_format(enum drm_i915_oa_format format) 
{
	if (IS_HASWELL(devid))
		return hsw_oa_formats[format];

	return gen8_oa_formats[format];
}

/* hsw_read_report_ticks
 * read gpu ticks from OA report
 * HASWELL is different from Gen8+
 */
uint32_t hsw_read_report_ticks(uint32_t report, enum drm_i915_oa_format format) {

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
uint32_t gen8_read_report_ticks(uint32_t *report, enum drm_i915_oa_format format) {

	return report[3];
}


/* gen8_read_report_clock_ratios
 * reads slice and unslice frquency from OA report
 */
uint32_t gen8_read_report_clock_ratios(uint32_t *report, uint32_t *slice_freq_mhz, uint32_t *unslice_freq_mhz) {

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
const char *gen8_read_report_reason(const uint32_t *report)
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
uint64_t gen8_read_40bit_a_counter(uint32_t *report, enum drm_i915_oa_format fmt, int a_id) {

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
uint64_t gen8_40bit_a_delta(uint64_t value0, uint64_t value1) {

	if (value0 > value1)
		return (1ULL << 40) + value1 - value0;
	else
		return value1 - value0;
}




uint64_t timebase_scale(uint32_t u32_delta) {

	return ((uint64_t)u32_delta * NSEC_PER_SEC) / timestamp_frequency;
}



/* Returns: the largest OA exponent that will still result in a sampling period
 * less than or equal to the given @period.
 */
int max_oa_exponent_for_period_lte(uint64_t period) 
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
int max_oa_exponent_for_freq_gt(uint64_t frequency) {
	uint64_t period = NSEC_PER_SEC / frequency;

	if (period == 0) return -1;

	return max_oa_exponent_for_period_lte(period - 1);
}

uint64_t oa_exponent_to_ns(int exponent) {
       return 1000000000ULL * (2ULL << exponent) / timestamp_frequency;
}


bool oa_report_is_periodic(uint32_t oa_exponent, const uint32_t *report) {

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



void scratch_buf_memset(drm_intel_bo *bo, int width, int height, uint32_t color) {

	int ret;

	ret = drm_intel_bo_map(bo, true /* writable */);

	for (int i = 0; i < width * height; i++) {
		( (uint32_t *) bo->virtual )[i] = color;
	}

	drm_intel_bo_unmap(bo);
}

// not sure what this does or why it is needed
void scratch_buf_init(drm_intel_bufmgr *bufmgr, struct igt_buf *buf, int width, int height, uint32_t color) {

	size_t stride = width * 4;
	size_t size = stride * height;
	drm_intel_bo *bo = drm_intel_bo_alloc(bufmgr, "", size, 4096);

	scratch_buf_memset(bo, width, height, color);

	buf->bo = bo;
	buf->stride = stride;
	buf->tiling = I915_TILING_NONE;
	buf->size = size;
}




void emit_report_perf_count(struct intel_batchbuffer *batch,
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
        printf("GEN8_MI_REPORT_PERF_COUNT: %d\n", GEN8_MI_REPORT_PERF_COUNT);
	}
}


void emit_stall_timestamp_and_rpc(struct intel_batchbuffer *batch,
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
bool init_sys_info(void) {

	const char *test_set_name = NULL;
	const char *test_set_uuid = NULL;
	char buf[256];

	timestamp_frequency = 12500000;

	// debug
	printf("IS_HASWELL:    %s\n", IS_HASWELL(devid) ? "true" : "false");
	printf("IS_BROADWELL:  %s\n", IS_BROADWELL(devid) ? "true" : "false");
	printf("IS_CHERRYVIEW: %s\n", IS_CHERRYVIEW(devid) ? "true" : "false");
	printf("IS_SKYLAKE:    %s\n", IS_SKYLAKE(devid) ? "true" : "false");
	printf("IS_BROXTON:    %s\n", IS_BROXTON(devid) ? "true" : "false");
	printf("IS_KABYLAKE:   %s\n", IS_KABYLAKE(devid) ? "true" : "false");
	printf("IS_GEMINILAKE: %s\n", IS_GEMINILAKE(devid) ? "true" : "false");
	printf("IS_COFFEELAKE: %s\n", IS_COFFEELAKE(devid) ? "true" : "false");

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
			printf(KGRN "device is BROADWELL\n" KNRM);
			test_set_uuid = "d6de6f55-e526-4f79-a6a6-d7315c09044e";
		} else if (IS_CHERRYVIEW(devid)) {
			test_set_uuid = "4a534b07-cba3-414d-8d60-874830e883aa";
			printf(KGRN "device is CHERRYVIEW\n" KNRM);
		} else if (IS_SKYLAKE(devid)) {
			printf(KGRN "device is SKYLAKE\n" KNRM);
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
				printf(KRED "unsupported Skylake GT size\n" KNRM);
				return false;
			}
			timestamp_frequency = 12000000;
		} else if (IS_BROXTON(devid)) {
			printf(KGRN "device is BROXTON\n" KNRM);
			test_set_uuid = "5ee72f5c-092f-421e-8b70-225f7c3e9612";
			timestamp_frequency = 19200000;
		} else if (IS_KABYLAKE(devid)) {
			printf(KGRN "device is KABYLAKE\n" KNRM);
			switch (intel_gt(devid)) {
			case 1:
				test_set_uuid = "baa3c7e4-52b6-4b85-801e-465a94b746dd";
				break;
			case 2:
				test_set_uuid = "f1792f32-6db2-4b50-b4b2-557128f1688d";
				break;
			default:
				printf(KRED "unsupported Kabylake GT size\n" KNRM);
				return false;
			}
			timestamp_frequency = 12000000;
		} else if (IS_GEMINILAKE(devid)) {
			printf(KGRN "device is GEMINILAKE\n" KNRM);
			test_set_uuid = "dd3fd789-e783-4204-8cd0-b671bbccb0cf";
			timestamp_frequency = 19200000;
		} else if (IS_COFFEELAKE(devid)) {
			printf(KGRN "device is COFFEELAKE\n" KNRM);
			switch (intel_gt(devid)) {
			case 1:
				test_set_uuid = "74fb4902-d3d3-4237-9e90-cbdc68d0a446";
				break;
			default:
				printf(KRED "unsupported Cannonlake GT size\n" KNRM);
				return false;
			}
			timestamp_frequency = 12000000;
		} else {
			printf(KRED "unsupported GT\n" KNRM);
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
void print_reports(uint32_t *oa_report0, uint32_t *oa_report1, int fmt, long long int cpu_ticks0, long long int cpu_ticks1, uint64_t cpu_cur_freq, uint64_t gpu_cur_freq, int dump) {

	FILE *f_output = NULL;
	struct oa_format format = get_oa_format(fmt);
	uint32_t gpu_ticks0;
	uint32_t gpu_ticks1;

	if (dump) {
		f_output = fopen("counters.csv", "a");
	}

	int i;
	if ( f_output && (size_t) ftell(f_output) == 0 && dump) {
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
		if (dump) fprintf(f_output, "%lu\t", delta);
	}

	// regular 32bit A counters
	for(int j = 0; j < format.n_a; j++) {
		uint32_t *a0 = (uint32_t *) ( ((uint8_t *)oa_report0) + format.a_off );
		uint32_t *a1 = (uint32_t *) ( ((uint8_t *)oa_report1) + format.a_off );
		uint32_t delta = a1[j] - a0[j];

		int a_id = format.first_a + j;
		if (undefined_a_counters[a_id]) continue;

		printf("A%-2d: 1st = %u, 2nd = %u, delta = %u\n", a_id, a0[j], a1[j], delta);
		if (dump) fprintf(f_output, "%u\t", delta);
	}

	// B counters
	for (int j = 0; j < format.n_b; j++) {
		uint32_t *b0 = (uint32_t *) ( ((uint8_t *)oa_report0) + format.b_off );
		uint32_t *b1 = (uint32_t *) ( ((uint8_t *)oa_report1) + format.b_off );
		uint32_t delta = b1[j] - b0[j];

		printf("B%-2d: 1st = %u, 2nd = %u, delta = %u\n", j, b0[j], b1[j], delta);
		if (dump) fprintf(f_output, "%u\t", delta);
	}

	// C counters
	for (int j = 0; j < format.n_c; j++) {
		uint32_t *c0 = (uint32_t *) ( ((uint8_t *)oa_report0) + format.c_off );
		uint32_t *c1 = (uint32_t *) ( ((uint8_t *)oa_report1) + format.c_off );
		uint32_t delta = c1[j] - c0[j];

		printf("C%-2d: 1st = %u, 2nd = %u, delta = %u\n", j, c0[j], c1[j], delta);
		if (dump) fprintf(f_output, "%lu\t", delta);
	}

	

	if (dump) {
		fprintf(f_output, "\n");
		fclose(f_output);
	}

}







void test_counters_with_opencl(int dump) {

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
	printf("\n");

	//for(int i = 0; i < 256/64; i++) {
	//	printf("===========================================================\n");
	//	printf("======================== report %d =========================\n", i);
	//	printf("===========================================================\n");
	//
	//	print_reports(report0_32 + i, report1_32 + i, test_oa_format, cpu_ticks0, cpu_ticks1, cpu_cur_freq, gpu_cur_freq, dump);
	//
	//	printf("\n");
	//}

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
unsigned read_i915_module_ref(void) {

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










int __i915_perf_add_config(int fd, struct drm_i915_perf_oa_config *config)
{
	int ret = igt_ioctl(fd, DRM_IOCTL_I915_PERF_ADD_CONFIG, config);
	if (ret < 0)
		ret = -errno;
	return ret;
}

int i915_perf_add_config(int fd, struct drm_i915_perf_oa_config *config)
{
	int config_id = __i915_perf_add_config(fd, config);

	printf("config_id=%i\n", config_id);
	igt_assert(config_id > 0);

	return config_id;
}

void i915_perf_remove_config(int fd, uint64_t config_id)
{
	igt_assert_eq(igt_ioctl(fd, DRM_IOCTL_I915_PERF_REMOVE_CONFIG,
				&config_id), 0);
}




/* Registers required by userspace. This list should be maintained by
 * the OA configs developers and agreed upon with kernel developers as
 * some of the registers have bits used by the kernel (for workarounds
 * for instance) and other bits that need to be set by the OA configs.
 */
void
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



void print_binary(int val, int len) {
	
	int i;
	char *word = (char*) calloc(len+1, sizeof(char));
	for(i=0; i<len; i++) {
		if( val<<(len-1) ) word[len-i-1] = '1';
		else word[len-i-1] = '0';
		val = val>>1;
	}
	word[len] = '\0';
	printf("0b%s\n", word);
	free(word);
}


#define GGTT 0	// uses full ppgtt 64 bits, so this should be zero (?)
#define ASYNC_MODE 0
#define PRED_ENABLE 0

#define BAR 0x161580DC

void send_mi_load_reg_mem(struct intel_batchbuffer *batch, uint32_t reg_address, uint32_t *memory_address, uint32_t ggtt, uint32_t async_mode) {

	// setup command
	// MI_LOAD_REGISTER_MEM

	// dword 0
	// bits 31:29 --> 0x0 = 0b000
	// bits 28:23 --> 0x29 = 0b101001
	// bit 22     --> use global GTT (?)
	// bit 21     --> Async Mode Enable (?)
	// bits 20:8  --> Reserved
	// bits 7:0   --> 0x2 == 0b00000010 (excludes dword (0,1))

	// dword 1
	// bits 31:23 --> Reserved
	// bits 22:2  --> Register Address
	// bits 1:0   --> MBZ (?????)

	// dword 2 e 3
	// bits 63:2 --> Memory Address
	// bits 1:0  --> MBZ (?????)

	uint32_t command_dword0 = 0;
	uint32_t command_dword1 = 0;
	uint32_t command_dword2 = 0;
	uint32_t command_dword3 = 0;
	uint64_t command_dword2_3 = 0;

	command_dword0 = command_dword0 | 2;
	command_dword0 = command_dword0 | ( ( (ggtt << 1) | async_mode) << 21);
	command_dword0 = command_dword0 | (0x29 << 23);
	
	command_dword1 = command_dword1 | (reg_address << 2);

	command_dword2_3 = command_dword2_3 | ( (uint64_t)memory_address << 2 );

	command_dword2 = (uint32_t) ( (command_dword2_3 & 0x7fff0000) >> 32 );
	command_dword3 = (uint32_t)   (command_dword2_3 & 0x00007fff);

	// setup batch
	BEGIN_BATCH(4, 0);
	OUT_BATCH(command_dword0);
	OUT_BATCH(command_dword1);
	OUT_BATCH(command_dword2);
	OUT_BATCH(command_dword3);
	//OUT_RELOC(bo, I915_GEM_DOMAIN_INSTRUCTION, I915_GEM_DOMAIN_INSTRUCTION, 0);
	//OUT_BATCH(0);
	ADVANCE_BATCH();

	sleep(1);

}

uint32_t send_mi_store_reg_mem(struct intel_batchbuffer *batch, uint32_t reg_address, uint32_t ggtt,uint32_t pred_enable) {

	// setup command
	// MI_STORE_REGISTER_MEM

	// dword 0
	// bits 31:29 --> 0x0 = 0b000
	// bits 28:23 --> 0x24 = 0b100100
	// bit 22     --> use global GTT (?)
	// bit 21     --> Reserved / Predicate Enable (?)
	// bits 20:8  --> Reserved
	// bits 7:0   --> 0x2 == 0b00000010 (excludes dword (0,1))

	// dword 1
	// bits 31:23 --> Reserved
	// bits 22:2  --> Register Address
	// bits 1:0   --> Reserved

	// dword 2 e 3
	// bits 63:2 --> Memory Address
	// bits 1:0  --> MBZ (?????)

	uint32_t value = 0;

	uint32_t command_dword0 = 0;
	uint32_t command_dword1 = 0;
	uint32_t command_dword2 = 0;
	uint32_t command_dword3 = 0;
	uint64_t command_dword2_3 = 0;

	command_dword0 = command_dword0 | 2;
	command_dword0 = command_dword0 | ( ( (ggtt << 1) | pred_enable) << 22);
	command_dword0 = command_dword0 | (0x24 << 23);

	command_dword1 = command_dword1 | (reg_address << 2);

	command_dword2_3 = command_dword2_3 | ( (uint64_t)&value << 2 );

	command_dword2 = (uint32_t) ( (command_dword2_3 & 0x7fff0000) >> 32 ); 
	command_dword3 = (uint32_t)   (command_dword2_3 & 0x00007fff);

	// setup batch
	BEGIN_BATCH(4, 0);
	OUT_BATCH(command_dword0);
	OUT_BATCH(command_dword1);
	OUT_BATCH(command_dword2);
	OUT_BATCH(command_dword3);
	//OUT_RELOC(bo, I915_GEM_DOMAIN_INSTRUCTION, I915_GEM_DOMAIN_INSTRUCTION, 0);
	//OUT_BATCH(0);
	ADVANCE_BATCH();

	sleep(1);

	return value;

}


void write_to_flexible_eu_registers(void) {

	printf("\n\n");
	printf("========================================================\n");
	printf("=================== EU_PERF_CNT_CTL0 ===================\n");
	printf("========================================================\n");



	// setup necessary driver stuff
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
	struct intel_batchbuffer *batch;
	drm_intel_bo *bo;
	drm_intel_context *context0;
	uint32_t ctx_id = 0;
	int width = 800;
	int height = 600;
	int ret;

	bufmgr = drm_intel_bufmgr_gem_init(drm_fd, 4096);
	drm_intel_bufmgr_gem_enable_reuse(bufmgr);

	//for(int i = 0; i < ARRAY_SIZE(src); i++) {
	//	scratch_buf_init(bufmgr, &src[i], width, height, 0xff0000ff);
	//	scratch_buf_init(bufmgr, &dst[i], width, height, 0x00ff00ff);
	//}

	batch = intel_batchbuffer_alloc(bufmgr, devid);

	context0 = drm_intel_gem_context_create(bufmgr);
	//context1 = drm_intel_gem_context_create(bufmgr);

	ret = drm_intel_gem_context_get_id(context0, &ctx_id);
	//
	properties[1] = ctx_id;
	//
	intel_batchbuffer_flush_with_context(batch, context0);

	//scratch_buf_memset(src[0].bo, width, height, 0xff0000ff);
	//scratch_buf_memset(dst[0].bo, width, height, 0x00ff00ff);

	stream_fd = __perf_open(drm_fd, &param, false);

	bo = drm_intel_bo_alloc(bufmgr, "mi_rpc dest bo", 4096, 64);

	ret = drm_intel_bo_map(bo, true /* write enable */);



	// ====================================================================== //
	// =================== setup bits for EU_PERF_CNT_CTL0 ================== //
	// ====================================================================== //


	// Configure Agregate EU Counter 0 (A7) @ 0xE458
	// register: EU_PERF_CNT_CTL0
	// specify increment event at bits 3:0
	// specify course event filter at bits 7:4
	// specify fine event filter at bits 11:8

	// count flops
	enum increment_event_filter inc_event = EU_FPU0_FPU1_PIPELINES_CONCURRENTLY_ACTIVE;
	enum coarse_event_filter coarse_event = NO_COARSE_FILTER;
	enum fine_event_filter fine_event = NO_FINE_FILTER;

	// setup dword to write to register
	uint32_t dword = 0;
	dword = dword | (uint32_t) inc_event;
	dword = dword | ( (uint32_t) coarse_event << 4);
	dword = dword | ( (uint32_t) fine_event << 8);

	// print binary word for debug
	printf("EU_PERF_CNT_CTL0: ");
	print_binary((int)dword, 32);


	// get mmio aperture address of EU_PERF_CNT_CTL0
	// (I have no idea what I'm doing)
	uint32_t reg_address = 0xE458 + BAR;

	uint32_t reg_contents;



	// ====================================================================== //
	// ======================== MI_LOAD_REGISTER_MEM ======================== //
	// ====================================================================== //

	//uint32_t command_dword0 = 0;
	//command_dword0 = command_dword0 | 2;
	//command_dword0 = command_dword0 | ( (GGTT | ASYNC_MODE) << 21);
	//command_dword0 = command_dword0 | (0x29 << 23);
	//
	//uint32_t command_dword1 = 0;
	//command_dword1 = command_dword1 | (graphics_address << 2);
	//
	//uint64_t command_dword2_3 = 0;
	//command_dword2_3 = command_dword2_3 | ((uint64_t)&dword << 2);
	//uint32_t command_dword2 = (uint32_t)((command_dword2_3 & 0x7fff0000) >> 32);
	//uint32_t command_dword3 = (uint32_t)(command_dword2_3 & 0x00007fff);
	//
	//printf("MI_LOAD_REGISTER_MEM: \n");
	//print_binary(command_dword0, 32);
	//print_binary(command_dword1, 32);
	//print_binary(command_dword2, 32);
	//print_binary(command_dword3, 32);

	send_mi_load_reg_mem(batch, reg_address, &dword, GGTT, ASYNC_MODE);



	// ====================================================================== //
	// ======================== MI_STORE_REGISTER_MEM ======================= //
	// ====================================================================== //

	//command_dword0 = 0;
	//command_dword0 = command_dword0 | 2;
	//command_dword0 = command_dword0 | ( (GGTT | PRED_ENABLE) << 22);
	//command_dword0 = command_dword0 | (0x24 << 23);
	//
	//command_dword1 = 0;
	//command_dword1 = command_dword1 | (graphics_address << 2);
	//
	//command_dword2_3 = 0;
	//command_dword2_3 = command_dword2_3 | ((uint64_t)&reg_contents << 2);
	//command_dword2 = (uint32_t)((command_dword2_3 & 0x7fff0000) >> 32); 
	//command_dword3 = (uint32_t)(command_dword2_3 & 0x00007fff);
	//
	//printf("MI_STORE_REGISTER_MEM: \n");
	//print_binary(command_dword0, 32);
	//print_binary(command_dword1, 32);
	//print_binary(command_dword2, 32);
	//print_binary(command_dword3, 32);

	reg_contents = send_mi_store_reg_mem(batch, reg_address, GGTT, PRED_ENABLE);


	printf("EU_PERF_CNT_CTL0: ");
	print_binary((int)reg_contents, 32);





	drm_intel_bo_unmap(bo);
	drm_intel_bo_unreference(bo);
	intel_batchbuffer_free(batch);
	drm_intel_bufmgr_destroy(bufmgr);
	__perf_close(stream_fd);


	printf("========================================================\n");
	printf("\n\n");



}

