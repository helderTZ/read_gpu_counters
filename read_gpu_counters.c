#define _GNU_SOURCE

#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <CL/cl.h>
#include "errors.h"

#include "igt.h"
#include "drm.h"
#include "read_gpu_counters.h"
#include "platform.h"

#include <sched.h>


extern char kernel_choice[50];
extern long long int *papi_values;


// registers
uint32_t oacontrol = 0x2B00;
uint32_t eu_perf_cnt_ctl_0_addr = 0xE458;
uint32_t eu_perf_cnt_ctl_1_addr = 0xE558;
uint32_t eu_perf_cnt_ctl_2_addr = 0xE658;
uint32_t eu_perf_cnt_ctl_3_addr = 0xE758;
uint32_t eu_perf_cnt_ctl_4_addr = 0xE45C;
uint32_t eu_perf_cnt_ctl_5_addr = 0xE55C;
uint32_t eu_perf_cnt_ctl_6_addr = 0xE65C;
uint32_t oaperf_a4_lower_free_addr = 0x2960;
uint32_t oaperf_a4_upper_free_addr = 0x2964;
uint32_t oaperf_a6_lower_free_addr = 0x2968;
uint32_t oaperf_a6_upper_free_addr = 0x296C;
uint32_t oaperf_a19_lower_free_addr = 0x2970;
uint32_t oaperf_a19_upper_free_addr = 0x2974;
uint32_t oaperf_a20_lower_free_addr = 0x2978;
uint32_t oaperf_a20_upper_free_addr = 0x297C;
uint32_t oaperf_a7_lower_addr = 0x2838;
uint32_t oaperf_a7_upper_addr = 0x283C;
uint32_t oaperf_a8_lower_addr = 0x2840;
uint32_t oaperf_a8_upper_addr = 0x2844;
uint32_t oaperf_a9_lower_addr = 0x2848;
uint32_t oaperf_a9_upper_addr = 0x284C;
uint32_t oaperf_a10_lower_addr = 0x2850;
uint32_t oaperf_a10_upper_addr = 0x2854;
uint32_t oaperf_a11_lower_addr = 0x2858;
uint32_t oaperf_a11_upper_addr = 0x285C;
uint32_t oaperf_a12_lower_addr = 0x2860;
uint32_t oaperf_a12_upper_addr = 0x2864;
uint32_t oaperf_a13_lower_addr = 0x2868;
uint32_t oaperf_a13_upper_addr = 0x286C;
uint32_t oaperf_a14_lower_addr = 0x2870;
uint32_t oaperf_a14_upper_addr = 0x2874;
uint32_t oaperf_a15_lower_addr = 0x2878;
uint32_t oaperf_a15_upper_addr = 0x287C;
uint32_t oaperf_a16_lower_addr = 0x2880;
uint32_t oaperf_a16_upper_addr = 0x2884;
uint32_t oaperf_a17_lower_addr = 0x2888;
uint32_t oaperf_a17_upper_addr = 0x288C;
uint32_t oaperf_a18_lower_addr = 0x2890;
uint32_t oaperf_a18_upper_addr = 0x2894;
uint32_t oaperf_a19_lower_addr = 0x2898;
uint32_t oaperf_a19_upper_addr = 0x289C;
uint32_t oaperf_a20_lower_addr = 0x28A0;
uint32_t oaperf_a20_upper_addr = 0x28A4;

// ============================================= THESE ONES ARE NOT SUPPORTED =============================================
// EU SEND Pipeline Active (Increment Event 0b0010) doesn't support Fine Event filter 0b0100 (movs)
uint32_t dword_for_counting_movs_in_row0_in_send_pipeline = 2		/* 0b0010 */ | 	// increment event filter 	bits[3:0]
															(7<<4)	/* 0b0111 */ |	// coarse event filter 		bits[7:4]
															(3<<8)	/* 0b0100 */;	// fine event filter		bits[11:8]
uint32_t dword_for_counting_movs_in_row1_in_send_pipeline = 2		/* 0b0010 */ | 	// increment event filter 	bits[3:0]
															(8<<4)	/* 0b0111 */ |	// coarse event filter 		bits[7:4]
															(3<<8)	/* 0b0100 */;	// fine event filter		bits[11:8]
// ============================================= THESE ONES ARE NOT SUPPORTED =============================================


// ======================================================================================================================== //
// ================================================== AVAILABLE COUNTERS ================================================== //
// ======================================================================================================================== //
uint32_t dword_for_counting_movs_in_row0_in_fpu0_pipeline = 0		/* 0b0000 */ |	//increment event filter 	bits[3:0]
															(7<<4)	/* 0b0111 */ |	// coarse event filter 		bits[7:4]
															(4<<8)	/* 0b0100 */;	// fine event filter		bits[11:8]
uint32_t dword_for_counting_movs_in_row1_in_fpu0_pipeline = 0		/* 0b0000 */ |	//increment event filter 	bits[3:0]
															(8<<4)	/* 0b0111 */ |	// coarse event filter 		bits[7:4]
															(4<<8)	/* 0b0100 */;	// fine event filter		bits[11:8]
uint32_t dword_for_counting_movs_in_row0_in_fpu1_pipeline = 1		/* 0b0000 */ |	//increment event filter 	bits[3:0]
															(7<<4)	/* 0b0111 */ |	// coarse event filter 		bits[7:4]
															(4<<8)	/* 0b0100 */;	// fine event filter		bits[11:8]
uint32_t dword_for_counting_movs_in_row1_in_fpu1_pipeline = 1		/* 0b0000 */ |	//increment event filter 	bits[3:0]
															(8<<4)	/* 0b0111 */ |	// coarse event filter 		bits[7:4]
															(4<<8)	/* 0b0100 */;	// fine event filter		bits[11:8]

uint32_t dword_for_counting_sends_in_row0_in_send_pipeline = 2		/* 0b0010 */ | 	// increment event filter 	bits[3:0]
															(7<<4)	/* 0b0111 */ |	// coarse event filter 		bits[7:4]
															(4<<8)	/* 0b0100 */;	// fine event filter		bits[11:8]
uint32_t dword_for_counting_sends_in_row1_in_send_pipeline = 2		/* 0b0010 */ | 	// increment event filter 	bits[3:0]
															(8<<4)	/* 0b0111 */ |	// coarse event filter 		bits[7:4]
															(4<<8)	/* 0b0100 */;	// fine event filter		bits[11:8]

uint32_t dword_for_counting_flops_in_fpu0_in_eu0_row_0 = 	0 		/* 0b0000 */ | 	// increment event filter 	bits[3:0]
															(7<<4) 	/* 0b0111 */ |	// coarse event filter 		bits[7:4]
															(7<<8)	/* 0b0111 */;	// fine event filter		bits[11:8]
uint32_t dword_for_counting_flops_in_fpu0_in_eu1_row_0 = 	0 		/* 0b0000 */ | 	// increment event filter 	bits[3:0]
															(7<<4) 	/* 0b0111 */ |	// coarse event filter 		bits[7:4]
															(8<<8)	/* 0b1000 */;	// fine event filter		bits[11:8]
uint32_t dword_for_counting_flops_in_fpu0_in_eu2_row_0 = 	0 		/* 0b0000 */ | 	// increment event filter 	bits[3:0]
															(7<<4) 	/* 0b0111 */ |	// coarse event filter 		bits[7:4]
															(9<<8)	/* 0b1001 */;	// fine event filter		bits[11:8]
uint32_t dword_for_counting_flops_in_fpu0_in_eu3_row_0 = 	0 		/* 0b0000 */ | 	// increment event filter 	bits[3:0]
															(7<<4) 	/* 0b0111 */ |	// coarse event filter 		bits[7:4]
															(10<<8)	/* 0b1010 */;	// fine event filter		bits[11:8]
															
uint32_t dword_for_counting_flops_in_fpu0_in_eu0_row_1 = 	0 		/* 0b0000 */ | 	// increment event filter 	bits[3:0]
															(8<<4) 	/* 0b1000 */ |	// coarse event filter 		bits[7:4]
															(7<<8)	/* 0b0111 */;	// fine event filter		bits[11:8]
uint32_t dword_for_counting_flops_in_fpu0_in_eu1_row_1 = 	0 		/* 0b0000 */ | 	// increment event filter 	bits[3:0]
															(8<<4) 	/* 0b1000 */ |	// coarse event filter 		bits[7:4]
															(8<<8)	/* 0b1000 */;	// fine event filter		bits[11:8]
uint32_t dword_for_counting_flops_in_fpu0_in_eu2_row_1 = 	0 		/* 0b0000 */ | 	// increment event filter 	bits[3:0]
															(8<<4) 	/* 0b1000 */ |	// coarse event filter 		bits[7:4]
															(9<<8)	/* 0b1001 */;	// fine event filter		bits[11:8]
uint32_t dword_for_counting_flops_in_fpu0_in_eu3_row_1 = 	0 		/* 0b0000 */ | 	// increment event filter 	bits[3:0]
															(8<<4) 	/* 0b1000 */ |	// coarse event filter 		bits[7:4]
															(10<<8)	/* 0b1010 */;	// fine event filter		bits[11:8]
															
uint32_t dword_for_counting_flops_in_fpu1_in_eu0_row_0 = 	1 		/* 0b0001 */ | 	// increment event filter 	bits[3:0]
															(7<<4) 	/* 0b0111 */ |	// coarse event filter 		bits[7:4]
															(7<<8)	/* 0b0111 */;	// fine event filter		bits[11:8]
uint32_t dword_for_counting_flops_in_fpu1_in_eu1_row_0 = 	1 		/* 0b0001 */ | 	// increment event filter 	bits[3:0]
															(7<<4) 	/* 0b0111 */ |	// coarse event filter 		bits[7:4]
															(8<<8)	/* 0b1000 */;	// fine event filter		bits[11:8]
uint32_t dword_for_counting_flops_in_fpu1_in_eu2_row_0 = 	1 		/* 0b0001 */ | 	// increment event filter 	bits[3:0]
															(7<<4) 	/* 0b0111 */ |	// coarse event filter 		bits[7:4]
															(9<<8)	/* 0b1001 */;	// fine event filter		bits[11:8]
uint32_t dword_for_counting_flops_in_fpu1_in_eu3_row_0 = 	1 		/* 0b0001 */ | 	// increment event filter 	bits[3:0]
															(7<<4) 	/* 0b0111 */ |	// coarse event filter 		bits[7:4]
															(10<<8)	/* 0b1010 */;	// fine event filter		bits[11:8]
															
uint32_t dword_for_counting_flops_in_fpu1_in_eu0_row_1 = 	1 		/* 0b0001 */ | 	// increment event filter 	bits[3:0]
															(8<<4) 	/* 0b1000 */ |	// coarse event filter 		bits[7:4]
															(7<<8)	/* 0b0111 */;	// fine event filter		bits[11:8]
uint32_t dword_for_counting_flops_in_fpu1_in_eu1_row_1 = 	1 		/* 0b0001 */ | 	// increment event filter 	bits[3:0]
															(8<<4) 	/* 0b1000 */ |	// coarse event filter 		bits[7:4]
															(8<<8)	/* 0b1000 */;	// fine event filter		bits[11:8]
uint32_t dword_for_counting_flops_in_fpu1_in_eu2_row_1 = 	1 		/* 0b0001 */ | 	// increment event filter 	bits[3:0]
															(8<<4) 	/* 0b1000 */ |	// coarse event filter 		bits[7:4]
															(9<<8)	/* 0b1001 */;	// fine event filter		bits[11:8]
uint32_t dword_for_counting_flops_in_fpu1_in_eu3_row_1 = 	1 		/* 0b0001 */ | 	// increment event filter 	bits[3:0]
															(8<<4) 	/* 0b1000 */ |	// coarse event filter 		bits[7:4]
															(10<<8)	/* 0b1010 */;	// fine event filter		bits[11:8]

uint32_t dword_for_counting_flops_in_fpu0_in_eu0_rows = 	0 		/* 0b0000 */ | 	// increment event filter 	bits[3:0]
															(0<<4) 	/* 0b0000 */ |	// coarse event filter 		bits[7:4]
															(7<<8)	/* 0b0111 */;	// fine event filter		bits[11:8]
uint32_t dword_for_counting_flops_in_fpu0_in_eu1_rows = 	0 		/* 0b0000 */ | 	// increment event filter 	bits[3:0]
															(0<<4) 	/* 0b0000 */ |	// coarse event filter 		bits[7:4]
															(8<<8)	/* 0b1000 */;	// fine event filter		bits[11:8]
uint32_t dword_for_counting_flops_in_fpu0_in_eu2_rows = 	0 		/* 0b0000 */ | 	// increment event filter 	bits[3:0]
															(0<<4) 	/* 0b0000 */ |	// coarse event filter 		bits[7:4]
															(9<<8)	/* 0b1001 */;	// fine event filter		bits[11:8]
uint32_t dword_for_counting_flops_in_fpu0_in_eu3_rows = 	0 		/* 0b0000 */ | 	// increment event filter 	bits[3:0]
															(0<<4) 	/* 0b0000 */ |	// coarse event filter 		bits[7:4]
															(10<<8)	/* 0b1010 */;	// fine event filter		bits[11:8]

uint32_t dword_for_counting_flops_in_fpu1_in_eu0_rows = 	1 		/* 0b0001 */ | 	// increment event filter 	bits[3:0]
															(0<<4) 	/* 0b0000 */ |	// coarse event filter 		bits[7:4]
															(7<<8)	/* 0b0111 */;	// fine event filter		bits[11:8]
uint32_t dword_for_counting_flops_in_fpu1_in_eu1_rows = 	1 		/* 0b0001 */ | 	// increment event filter 	bits[3:0]
															(0<<4) 	/* 0b0000 */ |	// coarse event filter 		bits[7:4]
															(8<<8)	/* 0b1000 */;	// fine event filter		bits[11:8]
uint32_t dword_for_counting_flops_in_fpu1_in_eu2_rows = 	1 		/* 0b0001 */ | 	// increment event filter 	bits[3:0]
															(0<<4) 	/* 0b0000 */ |	// coarse event filter 		bits[7:4]
															(9<<8)	/* 0b1001 */;	// fine event filter		bits[11:8]
uint32_t dword_for_counting_flops_in_fpu1_in_eu3_rows = 	1 		/* 0b0001 */ | 	// increment event filter 	bits[3:0]
															(0<<4) 	/* 0b0000 */ |	// coarse event filter 		bits[7:4]
															(10<<8)	/* 0b1010 */;	// fine event filter		bits[11:8]
															
uint32_t dword_for_counting_flops_in_fpus_in_eu0_row_0 = 	3 		/* 0b0011 */ | 	// increment event filter 	bits[3:0]
															(7<<4) 	/* 0b0111 */ |	// coarse event filter 		bits[7:4]
															(7<<8)	/* 0b0111 */;	// fine event filter		bits[11:8]
uint32_t dword_for_counting_flops_in_fpus_in_eu1_row_0 = 	3 		/* 0b0011 */ | 	// increment event filter 	bits[3:0]
															(7<<4) 	/* 0b0111 */ |	// coarse event filter 		bits[7:4]
															(8<<8)	/* 0b1000 */;	// fine event filter		bits[11:8]
uint32_t dword_for_counting_flops_in_fpus_in_eu2_row_0 = 	3 		/* 0b0011 */ | 	// increment event filter 	bits[3:0]
															(7<<4) 	/* 0b0111 */ |	// coarse event filter 		bits[7:4]
															(9<<8)	/* 0b1001 */;	// fine event filter		bits[11:8]
uint32_t dword_for_counting_flops_in_fpus_in_eu3_row_0 = 	3 		/* 0b0011 */ | 	// increment event filter 	bits[3:0]
															(7<<4) 	/* 0b0111 */ |	// coarse event filter 		bits[7:4]
															(10<<8)	/* 0b1010 */;	// fine event filter		bits[11:8]
															
uint32_t dword_for_counting_flops_in_fpus_in_eu0_row_1 = 	3 		/* 0b0011 */ | 	// increment event filter 	bits[3:0]
															(8<<4) 	/* 0b1000 */ |	// coarse event filter 		bits[7:4]
															(7<<8)	/* 0b0111 */;	// fine event filter		bits[11:8]
uint32_t dword_for_counting_flops_in_fpus_in_eu1_row_1 = 	3 		/* 0b0011 */ | 	// increment event filter 	bits[3:0]
															(8<<4) 	/* 0b1000 */ |	// coarse event filter 		bits[7:4]
															(8<<8)	/* 0b1000 */;	// fine event filter		bits[11:8]
uint32_t dword_for_counting_flops_in_fpus_in_eu2_row_1 = 	3 		/* 0b0011 */ | 	// increment event filter 	bits[3:0]
															(8<<4) 	/* 0b1000 */ |	// coarse event filter 		bits[7:4]
															(9<<8)	/* 0b1001 */;	// fine event filter		bits[11:8]
uint32_t dword_for_counting_flops_in_fpus_in_eu3_row_1 = 	3 		/* 0b0011 */ | 	// increment event filter 	bits[3:0]
															(8<<4) 	/* 0b1000 */ |	// coarse event filter 		bits[7:4]
															(10<<8)	/* 0b1010 */;	// fine event filter		bits[11:8]
// ======================================================================================================================== //
// ================================================== AVAILABLE COUNTERS ================================================== //
// ======================================================================================================================== //

uint32_t counter_format = 5;	// 0b101

// ======================================================================================================================== //
// ================================================ COUNTER CONFIGURATION ================================================= //
// ====================================================== deprecated ====================================================== //
// ======================================================================================================================== //

/*
#define CONFIG_COUNTERS OUTREG(eu_perf_cnt_ctl_0_addr, dword_for_counting_flops_in_fpu0_in_eu0_row_0 | dword_for_counting_flops_in_fpu1_in_eu0_row_0 << 12);			// A7, A8	\
						OUTREG(eu_perf_cnt_ctl_1_addr, dword_for_counting_flops_in_fpu0_in_eu1_row_0 | dword_for_counting_flops_in_fpu1_in_eu1_row_0 << 12);			// A9, A10	\
						OUTREG(eu_perf_cnt_ctl_2_addr, dword_for_counting_flops_in_fpu0_in_eu2_row_0 | dword_for_counting_flops_in_fpu1_in_eu2_row_0 << 12);			// A11, A12	\
						OUTREG(eu_perf_cnt_ctl_3_addr, dword_for_counting_flops_in_fpu0_in_eu3_row_0 | dword_for_counting_flops_in_fpu1_in_eu3_row_0 << 12);			// A13, A14	
*/

#define CONFIG_COUNTERS OUTREG(eu_perf_cnt_ctl_2_addr, dword_for_counting_flops_in_fpu1_in_eu0_row_0 | dword_for_counting_flops_in_fpu0_in_eu0_row_0 << 12);			// A7, A8	

/*
#define CONFIG_COUNTERS OUTREG(eu_perf_cnt_ctl_0_addr, dword_for_counting_flops_in_fpus_in_eu0_row_0 | dword_for_counting_flops_in_fpus_in_eu0_row_0 << 12);			// A7, A8
*/
/*
#define CONFIG_COUNTERS OUTREG(eu_perf_cnt_ctl_0_addr, dword_for_counting_sends_in_row0_in_send_pipeline | dword_for_counting_sends_in_row1_in_send_pipeline << 12);	// A17, A18	
*/
/*
#define CONFIG_COUNTERS OUTREG(eu_perf_cnt_ctl_0_addr, dword_for_counting_movs_in_row0_in_fpu0_pipeline | dword_for_counting_movs_in_row0_in_fpu1_pipeline << 12);		// A7, A8
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
        //printf("GEN8_MI_REPORT_PERF_COUNT: %d\n", GEN8_MI_REPORT_PERF_COUNT);
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
	//printf("IS_HASWELL:    %s\n", IS_HASWELL(devid) ? "true" : "false");
	//printf("IS_BROADWELL:  %s\n", IS_BROADWELL(devid) ? "true" : "false");
	//printf("IS_CHERRYVIEW: %s\n", IS_CHERRYVIEW(devid) ? "true" : "false");
	//printf("IS_SKYLAKE:    %s\n", IS_SKYLAKE(devid) ? "true" : "false");
	//printf("IS_BROXTON:    %s\n", IS_BROXTON(devid) ? "true" : "false");
	//printf("IS_KABYLAKE:   %s\n", IS_KABYLAKE(devid) ? "true" : "false");
	//printf("IS_GEMINILAKE: %s\n", IS_GEMINILAKE(devid) ? "true" : "false");
	//printf("IS_COFFEELAKE: %s\n", IS_COFFEELAKE(devid) ? "true" : "false");

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
				fprintf(stderr, KRED "unsupported Skylake GT size\n" KNRM);
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
				fprintf(stderr, KRED "unsupported Kabylake GT size\n" KNRM);
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
				fprintf(stderr, KRED "unsupported Cannonlake GT size\n" KNRM);
				return false;
			}
			timestamp_frequency = 12000000;
		} else {
			fprintf(stderr, KRED "unsupported GT\n" KNRM);
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



void print_report_card(report_card_t rep_card, char *filename) {
	
	FILE *f_output = fopen(filename, "a");
	
	int i;
	if ( f_output && (size_t) ftell(f_output) == 0) {
		fprintf(f_output, "OCL_TIME\tTIMESTAMP\tGPU_TICKS\tCPU_TICKS\tCTX_ID\tSLICE_CLK[mhz]\tUNSLICE_CLK[mhz]\tGPU_CLK[mhz]\tCPU_CLK[khz]\tGPU_TIME[s]\tCPU_TIME[s]\tREASON\t");
		for(i=0; i<36; i++) {
			fprintf(f_output, "A%d\t", i);
		}
		for(i=0; i<8; i++)
			fprintf(f_output, "B%d\t", i);
		for(i=0; i<8; i++)
			fprintf(f_output, "C%d\t", i);
		fprintf(f_output, "PSYS_ENERGY\tPACKAGE_ENERGY\tPP0_ENERGY\tDRAM_ENERGY\tRAPL_ENERGY_GPU\t");
		fprintf(f_output, "\n");
	}
	
	fprintf(f_output, "%lu\t", rep_card.ocl_nanoseconds);
	fprintf(f_output, "%u\t",  rep_card.timestamp_delta);
	fprintf(f_output, "%lu\t", rep_card.timestamp_delta);
	fprintf(f_output, "%u\t",  rep_card.gpu_ticks_delta);
	fprintf(f_output, "%u\t",  rep_card.cpu_ticks_delta);
	fprintf(f_output, "%u\t",  rep_card.ctx_id);
	fprintf(f_output, "%u\t",  rep_card.slice_freq);
	fprintf(f_output, "%u\t",  rep_card.unslice_freq);
	fprintf(f_output, "%u\t",  rep_card.gpu_cur_freq);
	fprintf(f_output, "%u\t",  rep_card.cpu_cur_freq);
	fprintf(f_output, "%s\t",  rep_card.gpu_time_string);
	fprintf(f_output, "%s\t",  rep_card.cpu_time_string);
	fprintf(f_output, "%s\t",  rep_card.reasons);
	
	for(int p = 0; p < 36; p++) fprintf(f_output, "%lu\t",  rep_card.a_counters_delta[p]);
	for(int p = 0; p < 8; p++) fprintf(f_output, "%lu\t",  rep_card.b_counters_delta[p]);
	for(int p = 0; p < 8; p++) fprintf(f_output, "%lu\t",  rep_card.c_counters_delta[p]);
	
	fprintf(f_output, "%lu\t",  rep_card.papi_psys_energy);
	fprintf(f_output, "%lu\t",  rep_card.papi_pkg_energy);
	fprintf(f_output, "%lu\t",  rep_card.papi_pp0_energy);
	fprintf(f_output, "%lu\t",  rep_card.papi_dram_energy);
	fprintf(f_output, "%lu\t",  0);	// gpu from papi
	
	fclose(f_output);
	
}




/* print_reports
 * calculates deltas between two OA reports and displays them
 */
report_card_t print_reports(uint32_t *oa_report0, uint32_t *oa_report1, int fmt, long long int cpu_ticks0, long long int cpu_ticks1, uint64_t cpu_cur_freq, uint64_t gpu_cur_freq, long long int ocl_nanoseconds, long long int *papi_values, int dump, int quiet, char *filename) {

	FILE *f_output = NULL;
	struct oa_format format = get_oa_format(fmt);
	uint32_t gpu_ticks0;
	uint32_t gpu_ticks1;
	report_card_t card;

	if (dump) {
		if (filename == NULL) 	f_output = fopen("counters.csv", "a");
		else					f_output = fopen(filename, "a");
	}

	int i;
	if ( f_output && (size_t) ftell(f_output) == 0 && dump) {
		fprintf(f_output, "OCL_TIME\tTIMESTAMP\tGPU_TICKS\tCPU_TICKS\tCTX_ID\tSLICE_CLK[mhz]\tUNSLICE_CLK[mhz]\tGPU_CLK[mhz]\tCPU_CLK[khz]\tGPU_TIME[s]\tCPU_TIME[s]\tREASON\t");
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
		fprintf(f_output, "PSYS_ENERGY\tPACKAGE_ENERGY\tPP0_ENERGY\tDRAM_ENERGY\tRAPL_ENERGY_GPU\t");
		fprintf(f_output, "\n");
	}
	
	// ocl time
	if (dump) fprintf(f_output, "%lu\t", ocl_nanoseconds);
	card.ocl_nanoseconds = ocl_nanoseconds;

	// timestamp
	if (!quiet) printf("TIMESTAMP: 1st = %u, 2nd = %u, delta = %u\n", oa_report0[1], oa_report1[1], oa_report1[1] - oa_report0[1]);
	if (dump) fprintf(f_output, "%u\t", oa_report1[1] - oa_report0[1]);
	card.timestamp_delta = oa_report1[1] - oa_report0[1];

	// gpu ticks
	if (IS_HASWELL(devid) && format.n_c == 0) {
		if (!quiet) printf("HASWELL does no support GPU_TICKS\n");	//this doesnt make sense, they have a separate function for reading this, wth ????
	} else {
		gpu_ticks0 = read_report_ticks(oa_report0, fmt);
		gpu_ticks1 = read_report_ticks(oa_report1, fmt);

		if (!quiet) printf("CLOCK TICKS: 1st = %u, 2nd = %u, delta = %u\n", gpu_ticks0, gpu_ticks1, gpu_ticks1 - gpu_ticks0);
		if (dump) fprintf(f_output, "%u\t", gpu_ticks1-gpu_ticks0);
		if (dump) fprintf(f_output, "%u\t", cpu_ticks1-cpu_ticks0);
		card.gpu_ticks_delta = gpu_ticks1-gpu_ticks0;
		card.cpu_ticks_delta = cpu_ticks1-cpu_ticks0;

	}

	if (intel_gen(devid) >= 8) {

		uint32_t slice_freq0, slice_freq1, unslice_freq0, unslice_freq1;
		const char *reason0 = gen8_read_report_reason(oa_report0);
		const char *reason1 = gen8_read_report_reason(oa_report1);
		char reasons[20];
		sprintf(reasons, "%s,%s", reason0, reason1);

		// context id
		if (!quiet) printf("CTX_ID: 1st = %u, 2nd = %u\n", oa_report0[2], oa_report1[2]);
		if (dump) fprintf(f_output, "%u\t", oa_report1[2]);
		card.ctx_id = oa_report1[2];

		// frequency
		gen8_read_report_clock_ratios(oa_report0, &slice_freq0, &unslice_freq0);
		gen8_read_report_clock_ratios(oa_report1, &slice_freq1, &unslice_freq1);
		if (!quiet) printf("SLICE CLK: 1st = %u MHz, 2nd = %u MHz ,delta = %d\n", slice_freq0, slice_freq1, (int)slice_freq1 - (int)slice_freq0);
		if (!quiet) printf("USLICE CLK: 1st = %u MHz, 2nd = %u MHz ,delta = %d\n", unslice_freq0, unslice_freq1, (int)unslice_freq1 - (int)unslice_freq0);

		// reason
		if (!quiet) printf("REASONS: \"%s\", 2nd = \"%s\"\n", reason0, reason1);

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
		
		card.slice_freq = slice_freq1;
		card.unslice_freq = unslice_freq1;
		card.gpu_cur_freq = gpu_cur_freq;
		card.cpu_cur_freq = cpu_cur_freq;
		strcpy(card.gpu_time_string, gpu_time_string);
		strcpy(card.cpu_time_string, cpu_time_string);
		strcpy(card.reasons, reasons);
		

	}


	// Gen8+ 40bit A counters
	for(int j = 0; j < format.n_a40; j++) {
		uint64_t value0 = gen8_read_40bit_a_counter(oa_report0, fmt, j);
		uint64_t value1 = gen8_read_40bit_a_counter(oa_report1, fmt, j);
		uint64_t delta = gen8_40bit_a_delta(value0, value1);
		
		if (undefined_a_counters[j]) continue;
		
		if (!quiet) printf("A%-2d: 1st = %lu, 2nd = %lu, delta = %lu\n", j, value0, value1, delta);
		if (dump) fprintf(f_output, "%lu\t", delta);
		card.a_counters_delta[j] = delta;
	}

	// regular 32bit A counters
	for(int j = 0; j < format.n_a; j++) {
		uint32_t *a0 = (uint32_t *) ( ((uint8_t *)oa_report0) + format.a_off );
		uint32_t *a1 = (uint32_t *) ( ((uint8_t *)oa_report1) + format.a_off );
		uint32_t delta = a1[j] - a0[j];

		int a_id = format.first_a + j;
		if (undefined_a_counters[a_id]) continue;

		if (!quiet) printf("A%-2d: 1st = %u, 2nd = %u, delta = %u\n", a_id, a0[j], a1[j], delta);
		if (dump) fprintf(f_output, "%u\t", delta);
		card.a_counters_delta[a_id] = delta;
	}

	// B counters
	for (int j = 0; j < format.n_b; j++) {
		uint32_t *b0 = (uint32_t *) ( ((uint8_t *)oa_report0) + format.b_off );
		uint32_t *b1 = (uint32_t *) ( ((uint8_t *)oa_report1) + format.b_off );
		uint32_t delta = b1[j] - b0[j];

		if (!quiet) printf("B%-2d: 1st = %u, 2nd = %u, delta = %u\n", j, b0[j], b1[j], delta);
		if (dump) fprintf(f_output, "%u\t", delta);
		card.b_counters_delta[j] = delta;
	}

	// C counters
	for (int j = 0; j < format.n_c; j++) {
		uint32_t *c0 = (uint32_t *) ( ((uint8_t *)oa_report0) + format.c_off );
		uint32_t *c1 = (uint32_t *) ( ((uint8_t *)oa_report1) + format.c_off );
		uint32_t delta = c1[j] - c0[j];

		if (!quiet) printf("C%-2d: 1st = %u, 2nd = %u, delta = %u\n", j, c0[j], c1[j], delta);
		if (dump) fprintf(f_output, "%lu\t", delta);
		card.c_counters_delta[j] = delta;
	}
	
	
	if (dump) fprintf(f_output, "%lu\t%lu\t%lu\t%lu\t%lu", papi_values[0], papi_values[1], papi_values[2], papi_values[3], 0);
	card.papi_psys_energy = papi_values[0];
	card.papi_pkg_energy = papi_values[1];
	card.papi_pp0_energy = papi_values[2];
	card.papi_dram_energy = papi_values[3];
	card.psys_energy = papi_values[0]/1.0e9;
	card.pkg_energy = papi_values[1]/1.0e9;
	card.pp0_energy = papi_values[2]/1.0e9;
	card.dram_energy = papi_values[3]/1.0e9;
	card.gpu_energy = card.pkg_energy - card.pp0_energy - card.dram_energy;
	card.psys_power_ocl = card.psys_energy / card.ocl_nanoseconds;
	card.pkg_power_ocl  = card.pkg_energy  / card.ocl_nanoseconds;
	card.pp0_power_ocl  = card.pp0_energy  / card.ocl_nanoseconds;
	card.dram_power_ocl = card.dram_energy / card.ocl_nanoseconds;
	card.gpu_power_ocl  = card.gpu_energy  / card.ocl_nanoseconds;
	card.psys_power_gput = card.psys_energy / card.gpu_ticks_delta;
	card.pkg_power_gput  = card.pkg_energy  / card.gpu_ticks_delta;
	card.pp0_power_gput  = card.pp0_energy  / card.gpu_ticks_delta;
	card.dram_power_gput = card.dram_energy / card.gpu_ticks_delta;
	card.gpu_power_gput  = card.gpu_energy  / card.gpu_ticks_delta;
	
	if (dump) {
		fprintf(f_output, "\n");
		fclose(f_output);
	}
	
	return card;

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
#define ASYNC_MODE 1
#define PRED_ENABLE 1

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




uint32_t create_filtering_word(enum increment_event_filter increment,
								enum coarse_event_filter coarse,
								enum fine_event_filter fine) {

	uint32_t dword = 0;
	dword = dword | (uint32_t) increment;
	dword = dword | ( (uint32_t) coarse << 4);
	dword = dword | ( (uint32_t) fine << 8);

	return dword;

}



uint64_t umax(int length, uint64_t *vector) {
	
	uint64_t maximum = 0;
	int i;
	
	for(i = 0; i < length; i++) {
		if(vector[i] > maximum)
			maximum = vector[i];
	}
	
	return maximum;
}

uint64_t umin(int length, uint64_t *vector) {
	
	uint64_t minimum = 0xFFFFFFFFFFFFFFFF;
	int i;
	
	for(i = 0; i < length; i++) {
		if(vector[i] < minimum)
			minimum = vector[i];
	}
	
	return minimum;
}

int64_t median(int length, int64_t *vector) {
	
	int64_t temp;
	int i, j;
	
	// sort in ascending order
	for(i = 0; i < length-1; i++) {
		for(j = 1; j < length; j++) {
			if(vector[i] > vector[j]) {
				// swap elements
				temp = vector[j];
				vector[j] = vector[i];
				vector[i] = temp;
			}
		}
	}
	
	if(length%2 == 0)
		// if even number of elements, return mean of the two elements in the middle
		return ((vector[length/2] + vector[length/2 - 1]) / 2.0);
	else
		// if odd number of elements, return element in the middle
		return vector[length/2];
}


uint64_t umedian(int length, uint64_t *vector) {
	
	uint64_t temp;
	int i, j;
	
	// sort in ascending order
	for(i = 0; i < length-1; i++) {
		for(j = 1; j < length; j++) {
			if(vector[i] > vector[j]) {
				// swap elements
				temp = vector[j];
				vector[j] = vector[i];
				vector[i] = temp;
			}
		}
	}
	
	if(length%2 == 0)
		// if even number of elements, return mean of the two elements in the middle
		return ((vector[length/2] + vector[length/2 - 1]) / 2.0);
	else
		// if odd number of elements, return element in the middle
		return vector[length/2];
}

float fmedian(int length, float *vector) {
	
	float temp;
	int i, j;
	
	// sort in ascending order
	for(i = 0; i < length-1; i++) {
		for(j = 1; j < length; j++) {
			if(vector[i] > vector[j]) {
				// swap elements
				temp = vector[j];
				vector[j] = vector[i];
				vector[i] = temp;
			}
		}
	}
	
	if(length%2 == 0)
		// if even number of elements, return mean of the two elements in the middle
		return ((vector[length/2] + vector[length/2 - 1]) / 2.0);
	else
		// if odd number of elements, return element in the middle
		return vector[length/2];
}


uint64_t average(int length, uint64_t *vector) {
	
	int sum = 0;
	int i;
	
	for(i = 0; i < length; i++) {
		sum += vector[i];
	}
	
	return sum/length;
}



#define LENGTH_OVERHEAD 1000

void measure_overheads() {
	
	int err;
	int i;
	uint64_t cpu_ticks0;
	uint64_t cpu_ticks1;
	uint64_t cpu_ticks_delta[LENGTH_OVERHEAD];
	uint64_t cpu_ticks_max;
	uint64_t cpu_ticks_min;
	uint64_t cpu_ticks_median;
	uint64_t cpu_ticks_avg;
	
	uint32_t oacontrol = 0x2B00;
	uint32_t eu_perf_cnt_ctl_0_addr = 0xE458;
	uint32_t eu_perf_cnt_ctl_1_addr = 0xE558;
	uint32_t eu_perf_cnt_ctl_2_addr = 0xE658;
	uint32_t eu_perf_cnt_ctl_3_addr = 0xE758;
	uint32_t eu_perf_cnt_ctl_4_addr = 0xE45C;
	uint32_t eu_perf_cnt_ctl_5_addr = 0xE55C;
	uint32_t eu_perf_cnt_ctl_6_addr = 0xE65C;
	
	uint32_t counter_format = 5;	// 0b101
	uint32_t dword_for_counting_flops = 3;			//    3 = 0b 0000 0000 0011
	uint32_t dword_for_counting_movs = 1026;		// 1026 = 0b 0100 0000 0010
	uint32_t dword_for_counting_ternary_ins = 516;	//  516 = 0b 0010 0000 0100
	uint32_t dword_for_counting_fpu0 = 0;			//    0 = 0b 0000 0000 0000
	uint32_t dword_for_counting_fpu1 = 1;			//    1 = 0b 0000 0000 0001
	
	
	
	struct pci_device *pci_dev = intel_get_pci_device();
	
	
	
	err = intel_register_access_init(pci_dev, 0, drm_fd);
	if (err==-1) {
		fprintf(stderr, KRED "error at intel_register_access_init()\n", KNRM);
		exit(1);
	}
	
	OUTREG(oacontrol, counter_format << OACONTROL_COUNTER_SELECT_SHIFT | PERFORMANCE_COUNTER_ENABLE);
	
	
	
	// measure overhead
	for(i = 0; i < LENGTH_OVERHEAD; i++) {	
		cpu_ticks0 = read_tsc_start();
			OUTREG(eu_perf_cnt_ctl_0_addr, dword_for_counting_flops);
			OUTREG(eu_perf_cnt_ctl_1_addr, dword_for_counting_movs);
			OUTREG(eu_perf_cnt_ctl_2_addr, dword_for_counting_ternary_ins);
			OUTREG(eu_perf_cnt_ctl_3_addr, dword_for_counting_fpu0 << 12 || dword_for_counting_fpu1);	
		cpu_ticks1 = read_tsc_end();
		cpu_ticks_delta[i] = cpu_ticks1 - cpu_ticks0;		
	}
	
	cpu_ticks_max = umax(LENGTH_OVERHEAD, cpu_ticks_delta);
	cpu_ticks_min = umin(LENGTH_OVERHEAD, cpu_ticks_delta);
	cpu_ticks_avg = average(LENGTH_OVERHEAD, cpu_ticks_delta);
	cpu_ticks_median = median(LENGTH_OVERHEAD, cpu_ticks_delta);
	
	
	
	printf("\n");
	printf("=======================================\n");
	printf("overhead of writing to EU_PERF_CNT_CTL:\n");
	printf("Min: %lu\n", cpu_ticks_min);
	printf("Max: %lu\n", cpu_ticks_max);
	printf("Avg: %lu\n", cpu_ticks_avg);
	printf("Median: %lu\n", cpu_ticks_median);
	printf("=======================================\n\n");
	
	
	

	OUTREG(oacontrol, counter_format << OACONTROL_COUNTER_SELECT_SHIFT | 0);	
	
	intel_register_access_fini();
	
	FILE *f = fopen("overheads.txt", "w");
	for(i=0; i<LENGTH_OVERHEAD; i++) {
		fprintf(f, "%lu\n", cpu_ticks_delta[i]);
	}
	fclose(f);
	
}






/**************************************************************
 * ******************** READ COUNTERS RPC  ********************
 * ************************************************************
 */



/** read_counters_rpc
 * read counters by sending MI_RPC command
 */
void read_counters_rpc(int dump, int power_smoothing, int external_app, char *app_name_args, char **envp, uint32_t custom_counter_dword) {
	
	// ======================== prelminaries ======================== //
	
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
	
	// end preliminaries
	
	
	
	cl_event event;
	cl_ulong time_start;
	cl_ulong time_end;
	
	
	
	
	struct pci_device *pci_dev = intel_get_pci_device();
    uint32_t devid, gen;
	int mmio_bar, mmio_size;
	int err;
	
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
	
	
	
	// ========================== PAPI setup ========================== //
	
	// PAPI vars
	int retval;
	int native;
	int numEvents = 4;
	char *EventNames[] = {"rapl:::PSYS_ENERGY:PACKAGE0", "rapl:::PACKAGE_ENERGY:PACKAGE0", "rapl:::PP0_ENERGY:PACKAGE0", "rapl:::DRAM_ENERGY:PACKAGE0"}; //, "rapl::RAPL_ENERGY_GPU"};
	papi_values = (long long int *) malloc(numEvents * sizeof(long long int));
	
	// PAPI init
	retval = PAPI_library_init(PAPI_VER_CURRENT);
	if (retval != PAPI_VER_CURRENT) {
		fprintf(stderr, KRED "PAPI library init error at line %d\nError: %s\n" KNRM, __LINE__, PAPI_strerror(retval));
		goto CLEANUP_AFTER_GPU_STUFF;
		exit(1);
	}
	
	// create event set
	EventSet = PAPI_NULL;
	retval = PAPI_create_eventset(&EventSet);
	if (retval != PAPI_OK) {
		fprintf(stderr, KRED "PAPI create eventset error at line %d\nError: %s\n" KNRM, __LINE__, PAPI_strerror(retval));
		goto CLEANUP_AFTER_GPU_STUFF;
		exit(1);
	}
	
	// iterate events
	for (int i = 0; i < numEvents; i++) {
		
		retval = PAPI_event_name_to_code(EventNames[i], &native);
		if (retval != PAPI_OK) {
			fprintf(stderr, KRED "PAPI retrieve event code error at line %d\nError: %s\n" KNRM, __LINE__, PAPI_strerror(retval));
			goto CLEANUP_AFTER_GPU_STUFF;
			exit(1);
		}
		
		retval = PAPI_add_event(EventSet, native);
		if (retval != PAPI_OK) {
			fprintf(stderr, KRED "PAPI add event error at line %d\nError: %s\n" KNRM, __LINE__, PAPI_strerror(retval));
			goto CLEANUP_AFTER_GPU_STUFF;
			exit(1);
		}
	}
	// PAPI setup end
	
	
	
	
	
	printf("Configuring counters, starting PAPI and running the kernel ...\n");
	fflush(stdout);
	
	
	
	
	// vars for handling medians
	long long int ocl_nanoseconds;
	uint64_t cpu_ticks_delta;
	int power_reps = 10;
	uint64_t *cpu_ticks0_for_median = (uint64_t *) calloc(power_reps, sizeof(uint64_t));
	uint64_t *cpu_ticks1_for_median = (uint64_t *) calloc(power_reps, sizeof(uint64_t));
	uint64_t *cpu_ticks_delta_for_median = (uint64_t *) calloc(power_reps, sizeof(uint64_t));
	long long int *ocl_nanoseconds_for_median = (long long int *) calloc(power_reps, sizeof(long long int));
	long long int **papi_values_for_median = (long long int **) malloc(power_reps * sizeof(long long int*));
	for(int k=0; k<power_reps; k++) {
		papi_values_for_median[k] = (long long int *) calloc(numEvents, sizeof(long long int));
	}
	uint64_t cpu_ticks0_median = 0;
	uint64_t cpu_ticks1_median = 0;
	uint64_t cpu_ticks_delta_median = 0;
	long long int ocl_nanoseconds_median = 0;
	long long int *papi_values_median = (long long int *) calloc(numEvents, sizeof(long long int));
	

	
	
	if (!power_smoothing) {
	
		err = intel_register_access_init(pci_dev, 0, drm_fd);
		if (err==-1) {
			fprintf(stderr, KRED "error at intel_register_access_init()\n", KNRM);
			goto CLEANUP_AFTER_GPU_STUFF;
			exit(1);
		}
		
		// config
		uint32_t oacontrol_default = INREG(oacontrol);
		OUTREG(oacontrol, counter_format << OACONTROL_COUNTER_SELECT_SHIFT | PERFORMANCE_COUNTER_ENABLE);
			
		// configure aggregated counters
		if (custom_counter_dword != 0) OUTREG(eu_perf_cnt_ctl_0_addr, custom_counter_dword);
		else CONFIG_COUNTERS
		
		intel_register_access_fini();
		
		emit_report_perf_count(batch,
								bo,
								0,  		 /* report dst offset */
								0xdeadbeef); /* report id */
		
		intel_batchbuffer_flush_with_context(batch, context0);
		
		retval = PAPI_start(EventSet);
		if (retval != PAPI_OK) {
			fprintf(stderr, KRED "PAPI start error at line %d\nError: %s" KNRM, __LINE__, PAPI_strerror(retval));
			goto CLEANUP_AFTER_GPU_STUFF;
			exit(1);
		}
		
		cpu_ticks0 = read_tsc_start();

		// do work
		if (!external_app) {
			ret = clEnqueueNDRangeKernel(command_queue, kernel, 1, NULL, &global, &local, 0, NULL, &event); clCheckError(ret, __LINE__);
			clFinish(command_queue); clCheckError(ret, __LINE__);
		}
		else {
			/** Don't know why this code doesn't work but system() does */
			/*
			printf(">>>>>>>>>>> going to fork >>>\n");
			pid_t parent = getpid();
			pid_t pid = fork();
			if (pid < 0) {
				printf(KRED "Failed to fork() at line %d\n" KNRM, __LINE__);
				goto CLEANUP_AFTER_GPU_STUFF;
				exit(0);
			}
			else if (pid == 0) {	// we are the parent, therefore wait for child
				int status;
				printf(">>>>>>>>>>> forked, waiting >>>\n");
				waitpid(pid, &status, 0);
				printf(">>>>>>>>>>> done >>>\n");
			} else {	// we are the child, therefore execve
				printf(">>>>>>>>>>> forked, I am child >>>\n");
				// get name and args separately
				char *next_token = strtok(app_name_args, " ");
				char *name = (char*) malloc(strlen(app_name_args) * sizeof(char));
				char **args = (char**) malloc(100 * sizeof(char*));	// hardcode 100 max args
				strcpy(name, next_token);
				int l = 0;
				while (next_token != NULL) {
					args[l] = (char*) malloc(100 * sizeof(char));
					next_token = strtok(next_token, " ");
					strcpy(args[l], next_token);
					strcat(args[l], " ");
					l++;
				}
				printf("name: %s\n", name);
				printf("args:\n");
				for(int o; o < l; o++) printf("\t%s\n", args[o]);
				execve(name, args, envp);
				exit(0);
			}
			*/
			system(app_name_args);
		}
			

		cpu_ticks1 = read_tsc_end();
		
		retval = PAPI_stop(EventSet, papi_values);
		if (retval != PAPI_OK) {
			fprintf(stderr, KRED "PAPI stop error at line %d\nError: %s" KNRM, __LINE__, PAPI_strerror(retval));
			exit(1);
		}
		
		//intel_batchbuffer_flush_with_context(batch, context0);

		emit_report_perf_count(batch,
								bo,
								256,   		 /* report dst offset */
								0xbeefbeef); /* report id */

		intel_batchbuffer_flush_with_context(batch, context1);

		ret = drm_intel_bo_map(bo, false /* write enable */);

		report0_32 = bo->virtual;

		report1_32 = report0_32 + 64;
		
		err = intel_register_access_init(pci_dev, 0, drm_fd);
		if (err==-1) {
			fprintf(stderr, KRED "error at intel_register_access_init()\n", KNRM);
			exit(1);
		}
		
		OUTREG(oacontrol, oacontrol_default);
		
		intel_register_access_fini();
		
		clGetEventProfilingInfo(event, CL_PROFILING_COMMAND_START, sizeof(time_start), &time_start, NULL);
		clGetEventProfilingInfo(event, CL_PROFILING_COMMAND_END, sizeof(time_end), &time_end, NULL);
		ocl_nanoseconds = time_end-time_start;
	
		cpu_ticks_delta = (cpu_ticks1-cpu_ticks0);
		
		printf("Kernel finished.\n");
		fflush(stdout);
		
		uint32_t gpu_ticks0 = report0_32[3];
		uint32_t gpu_ticks1 = report1_32[3];
		uint32_t gpu_ticks_delta = gpu_ticks1 - gpu_ticks0;
		
		
		// print
		//char *filename_rpc = (char *) malloc(255);
		//sprintf(filename_rpc, "results/results_rpc_%s_%d_blocks_%d_tpb.csv", kernel_choice, global/local, local);
		//report_card_t rep_card = print_reports(report0_32, report1_32, test_oa_format, cpu_ticks0, cpu_ticks1, cpu_cur_freq, gpu_cur_freq, ocl_nanoseconds, papi_values, dump, 0, filename_rpc);
		//free(filename_rpc);
	
	}
	
	
	
	else {
		
		//report_card_t *report_cards = (report_card_t*) malloc(power_reps * sizeof(report_card_t));
		
		
		for(int power_it = 0; power_it < power_reps; power_it++) {
			
			
		
			//================================= CONFIGURE COUNTERS =================================//
			err = intel_register_access_init(pci_dev, 0, drm_fd);
			if (err==-1) {
				fprintf(stderr, KRED "error at intel_register_access_init()\n", KNRM);
				exit(1);
			}
			// config
			uint32_t oacontrol_default = INREG(oacontrol);
			OUTREG(oacontrol, counter_format << OACONTROL_COUNTER_SELECT_SHIFT | PERFORMANCE_COUNTER_ENABLE);
			// configure aggregated counters
			if (custom_counter_dword != 0) OUTREG(eu_perf_cnt_ctl_0_addr, custom_counter_dword);
			else CONFIG_COUNTERS
			intel_register_access_fini();
			emit_report_perf_count(batch,
									bo,
									0,  		 /* report dst offset */
									0xdeadbeef); /* report id */
			intel_batchbuffer_flush_with_context(batch, context0);
			
			//================================= START PAPI =================================//
			retval = PAPI_start(EventSet);
			if (retval != PAPI_OK) {
				fprintf(stderr, KRED "PAPI start error at line %d\nError: %s" KNRM, __LINE__, PAPI_strerror(retval));
				exit(1);
			}
			
			//================================= RUN KERNEL =================================//
			cpu_ticks0 = read_tsc_start();
			ret = clEnqueueNDRangeKernel(command_queue, kernel, 1, NULL, &global, &local, 0, NULL, &event); clCheckError(ret, __LINE__);
			clFinish(command_queue); clCheckError(ret, __LINE__);
			cpu_ticks1 = read_tsc_end();
			
			//================================= STOP PAPI =================================//
			retval = PAPI_stop(EventSet, papi_values);
			if (retval != PAPI_OK) {
				fprintf(stderr, KRED "PAPI stop error at line %d\nError: %s" KNRM, __LINE__, PAPI_strerror(retval));
				exit(1);
			}
			
			//================================= GET COUNTERS =================================//
			emit_report_perf_count(batch,
									bo,
									256,   		 /* report dst offset */
									0xbeefbeef); /* report id */

			intel_batchbuffer_flush_with_context(batch, context1);
			ret = drm_intel_bo_map(bo, false /* write enable */);
			report0_32 = bo->virtual;
			report1_32 = report0_32 + 64;
			
			
			//================================= RETURN COUNTERS TO DEFAULT SETTING =================================//
			err = intel_register_access_init(pci_dev, 0, drm_fd);
			if (err==-1) {
				fprintf(stderr, KRED "error at intel_register_access_init()\n", KNRM);
				exit(1);
			}
			OUTREG(oacontrol, oacontrol_default);
			intel_register_access_fini();
			
			//================================= GET OCL TICKS =================================//
			clGetEventProfilingInfo(event, CL_PROFILING_COMMAND_START, sizeof(time_start), &time_start, NULL);
			clGetEventProfilingInfo(event, CL_PROFILING_COMMAND_END, sizeof(time_end), &time_end, NULL);
			ocl_nanoseconds = time_end-time_start;
			
			//================================= SAVE FOR MEDIAN =================================//
			for(int l=0; l<numEvents; l++) {
				papi_values_for_median[power_it][l] += papi_values[l];
			}
			cpu_ticks0_for_median[power_it] += cpu_ticks0;
			cpu_ticks1_for_median[power_it] += cpu_ticks1;
			ocl_nanoseconds_for_median[power_it] += ocl_nanoseconds;
			cpu_ticks_delta_for_median[power_it] = (cpu_ticks1_for_median-cpu_ticks0_for_median);
			
			
			//report_cards[power_it] = print_reports(report0_32, report1_32, test_oa_format, cpu_ticks0, cpu_ticks1, cpu_cur_freq, gpu_cur_freq, ocl_nanoseconds, papi_values, 0, 1, NULL);
			
		}
		
		//================================= CALC MEDIANS =================================//
		long long int *temp =  (long long int *) calloc(power_reps, sizeof(long long int));
		for(int l=0; l<numEvents; l++) {
			for(int k=0; k<power_reps; k++) temp[k] = papi_values_for_median[k][l];
			for(int k=0; k<power_reps; k++) {
				papi_values_median[l] = median(power_reps, (int64_t*)temp);
			}
		}
		free(temp);
		cpu_ticks_delta_median = umedian(power_reps, cpu_ticks_delta_for_median);
		ocl_nanoseconds_median = median(power_reps, (int64_t*)ocl_nanoseconds_for_median);
		
		
		
		
		
		/*
		
		// convert report_card_t *report_cards from aos to soa
		uint32_t *timestamp_delta = (uint32_t*) malloc(power_reps * sizeof(uint32_t));
		uint64_t *ocl_nanoseconds = (uint64_t*) malloc(power_reps * sizeof(uint64_t));
		uint64_t *cpu_ticks_delta = (uint64_t*) malloc(power_reps * sizeof(uint64_t));
		uint32_t *gpu_ticks_delta = (uint32_t*) malloc(power_reps * sizeof(uint32_t));
		uint64_t **a_counters_delta = (uint64_t**) malloc(36 * sizeof(uint64_t*));
		uint32_t **b_counters_delta = (uint32_t**) malloc(8 * sizeof(uint32_t*));
		uint32_t **c_counters_delta = (uint32_t**) malloc(8 * sizeof(uint32_t*));
		for(int p = 0; p < 36; p++) a_counters_delta[p] = (uint64_t*) malloc(power_reps * sizeof(uint64_t));
		for(int p = 0; p < 8; p++)  b_counters_delta[p] = (uint32_t*) malloc(power_reps * sizeof(uint32_t));
		for(int p = 0; p < 8; p++)  c_counters_delta[p] = (uint32_t*) malloc(power_reps * sizeof(uint32_t));
		long long int *papi_psys_energy = (long long int*) malloc(power_reps * sizeof(long long int));
		long long int *papi_pkg_energy = (long long int*) malloc(power_reps * sizeof(long long int));
		long long int *papi_pp0_energy = (long long int*) malloc(power_reps * sizeof(long long int));
		long long int *papi_dram_energy = (long long int*) malloc(power_reps * sizeof(long long int));
		float *psys_energy = (float*) malloc(power_reps * sizeof(float));
		float *pkg_energy  = (float*) malloc(power_reps * sizeof(float));
		float *pp0_energy  = (float*) malloc(power_reps * sizeof(float));
		float *dram_energy = (float*) malloc(power_reps * sizeof(float));
		float *gpu_energy  = (float*) malloc(power_reps * sizeof(float));
		float *psys_power_ocl = (float*) malloc(power_reps * sizeof(float));
		float *pkg_power_ocl = (float*) malloc(power_reps * sizeof(float));
		float *pp0_power_ocl = (float*) malloc(power_reps * sizeof(float));
		float *dram_power_ocl = (float*) malloc(power_reps * sizeof(float));
		float *gpu_power_ocl = (float*) malloc(power_reps * sizeof(float));
		float *psys_power_gput = (float*) malloc(power_reps * sizeof(float));
		float *pkg_power_gput  = (float*) malloc(power_reps * sizeof(float));
		float *pp0_power_gput  = (float*) malloc(power_reps * sizeof(float));
		float *dram_power_gput = (float*) malloc(power_reps * sizeof(float));
		float *gpu_power_gput  = (float*) malloc(power_reps * sizeof(float));
		
		for(int k = 0; k < power_reps; k++) {
			timestamp_delta[k] = report_cards[k].timestamp_delta;
			ocl_nanoseconds[k] = report_cards[k].ocl_nanoseconds;
			cpu_ticks_delta[k] = report_cards[k].cpu_ticks_delta;
			gpu_ticks_delta[k] = report_cards[k].gpu_ticks_delta;
			for(int p = 0; p < 36; p++) a_counters_delta[p][k] = report_cards[k].a_counters_delta[p];
			for(int p = 0; p < 8; p++)  b_counters_delta[p][k] = report_cards[k].b_counters_delta[p];
			for(int p = 0; p < 8; p++)  c_counters_delta[p][k] = report_cards[k].c_counters_delta[p];
			papi_psys_energy[k] = report_cards[k].papi_psys_energy;
			papi_pkg_energy[k]  = report_cards[k].papi_pkg_energy;
			papi_pp0_energy[k]  = report_cards[k].papi_pp0_energy;
			papi_dram_energy[k] = report_cards[k].papi_dram_energy;
			gpu_energy[k] = report_cards[k].gpu_energy;
			psys_power_ocl[k] = report_cards[k].psys_power_ocl;
			pkg_power_ocl[k]  = report_cards[k].pkg_power_ocl;
			pp0_power_ocl[k]  = report_cards[k].pp0_power_ocl;
			dram_power_ocl[k] = report_cards[k].dram_power_ocl;
			gpu_power_ocl[k]  = report_cards[k].gpu_power_ocl;
			psys_power_gput[k] = report_cards[k].psys_power_gput;
			pkg_power_gput[k]  = report_cards[k].pkg_power_gput;
			pp0_power_gput[k]  = report_cards[k].pp0_power_gput;
			dram_power_gput[k] = report_cards[k].dram_power_gput;
			gpu_power_gput[k]  = report_cards[k].gpu_power_gput;
		}
		
		uint32_t timestamp_delta_median = umedian(power_reps, (uint64_t*)timestamp_delta);
		uint64_t ocl_nanoseconds_median = umedian(power_reps, ocl_nanoseconds);
		uint64_t cpu_ticks_delta_median = umedian(power_reps, cpu_ticks_delta);
		uint32_t gpu_ticks_delta_median = umedian(power_reps, (uint64_t*)gpu_ticks_delta);
		uint64_t *a_counters_delta_median = (uint64_t*) malloc(36 * sizeof(uint64_t));
		uint32_t *b_counters_delta_median = (uint32_t*) malloc(8 * sizeof(uint32_t));
		uint32_t *c_counters_delta_median = (uint32_t*) malloc(8 * sizeof(uint32_t));
		for(int p = 0; p < 36; p++) a_counters_delta_median[p] = umedian(power_reps, a_counters_delta[p]);
		for(int p = 0; p < 8; p++)  b_counters_delta_median[p] = umedian(power_reps, (uint64_t*)b_counters_delta[p]);
		for(int p = 0; p < 8; p++)  c_counters_delta_median[p] = umedian(power_reps, (uint64_t*)c_counters_delta[p]);
		long long int papi_psys_energy_median = umedian(power_reps, (int64_t*)papi_psys_energy);
		long long int papi_pkg_energy_median = umedian(power_reps, (int64_t*)papi_pkg_energy);
		long long int papi_pp0_energy_median = umedian(power_reps, (int64_t*)papi_pp0_energy);
		long long int papi_dram_energy_median = umedian(power_reps, (int64_t*)papi_dram_energy);
		float psys_energy_median = fmedian(power_reps, psys_energy);
		float pkg_energy_median  = fmedian(power_reps, pkg_energy);
		float pp0_energy_median  = fmedian(power_reps, pp0_energy);
		float dram_energy_median = fmedian(power_reps, dram_energy);
		float gpu_energy_median  = fmedian(power_reps, gpu_energy);
		float psys_power_ocl_median = fmedian(power_reps, psys_power_ocl);
		float pkg_power_ocl_median = fmedian(power_reps, pkg_power_ocl);
		float pp0_power_ocl_median = fmedian(power_reps, pp0_power_ocl);
		float dram_power_ocl_median = fmedian(power_reps, dram_power_ocl);
		float gpu_power_ocl_median = fmedian(power_reps, gpu_power_ocl);
		float psys_power_gput_median  = fmedian(power_reps, psys_power_gput); 
		float pkg_power_gput_median  = fmedian(power_reps, pkg_power_gput);
		float pp0_power_gput_median  = fmedian(power_reps, pp0_power_gput);
		float dram_power_gput_median = fmedian(power_reps, dram_power_gput);
		float gpu_power_gput_median  = fmedian(power_reps, gpu_power_gput);
		
		report_card_t rep_card_median;
		rep_card_median.timestamp_delta = timestamp_delta_median;
		rep_card_median.ocl_nanoseconds = ocl_nanoseconds_median;
		rep_card_median.cpu_ticks_delta = cpu_ticks_delta_median;
		rep_card_median.gpu_ticks_delta = gpu_ticks_delta_median;
		for(int p = 0; p < 36; p++) rep_card_median.a_counters_delta[p] = a_counters_delta_median[p];
		for(int p = 0; p < 8; p++)  rep_card_median.b_counters_delta[p] = b_counters_delta_median[p];
		for(int p = 0; p < 8; p++)  rep_card_median.c_counters_delta[p] = c_counters_delta_median[p];
		rep_card_median.papi_psys_energy = papi_psys_energy_median;
		rep_card_median.papi_pkg_energy = papi_psys_energy_median;
		rep_card_median.papi_pp0_energy = papi_psys_energy_median;
		rep_card_median.papi_dram_energy = papi_psys_energy_median;
		rep_card_median.papi_dram_energy = papi_psys_energy_median;
		rep_card_median.psys_energy = psys_energy_median;
		rep_card_median.pkg_energy = pkg_energy_median;
		rep_card_median.pp0_energy = pp0_energy_median;
		rep_card_median.dram_energy = dram_energy_median;
		rep_card_median.psys_power_ocl = psys_power_ocl_median;
		rep_card_median.pkg_power_ocl  = pkg_power_ocl_median;
		rep_card_median.pp0_power_ocl  = pp0_power_ocl_median;
		rep_card_median.dram_power_ocl = dram_power_ocl_median;
		rep_card_median.gpu_power_ocl  = gpu_power_ocl_median;
		rep_card_median.psys_power_gput = psys_power_gput_median;
		rep_card_median.pkg_power_gput  = pkg_power_gput_median;
		rep_card_median.pp0_power_gput  = pp0_power_gput_median;
		rep_card_median.dram_power_gput = dram_power_gput_median;
		rep_card_median.gpu_power_gput  = gpu_power_gput_median;
		
		
		// print
		char *filename_rpc = (char *) malloc(255);
		sprintf(filename_rpc, "results/results_rpc_%s_%d_blocks_%d_tpb.csv", kernel_choice, global/local, local);
		print_report_card(rep_card_median, filename_rpc); 
		free(filename_rpc);
		
		
		// frees
		free(timestamp_delta);
		free(ocl_nanoseconds);
		free(cpu_ticks_delta);
		free(gpu_ticks_delta);
		//for(int p = 0; p < 36; p++) free(a_counters_delta[p]);
		//for(int p = 0; p < 8; p++) free(b_counters_delta[p]);
		//for(int p = 0; p < 8; p++) free(c_counters_delta[p]);
		//free(a_counters_delta);
		//free(b_counters_delta);
		//free(c_counters_delta);
		free(papi_psys_energy);
		free(papi_pkg_energy);
		free(papi_pp0_energy);
		free(papi_dram_energy);
		free(psys_energy);
		free(pkg_energy);
		free(pp0_energy);
		free(dram_energy);
		free(gpu_energy);
		free(psys_power_ocl);
		free(pkg_power_ocl);
		free(pp0_power_ocl);
		free(dram_power_ocl);
		free(gpu_power_ocl);
		free(psys_power_gput);
		free(pkg_power_gput);
		free(pp0_power_gput);
		free(dram_power_gput);
		free(gpu_power_gput);
		free(a_counters_delta_median);
		free(b_counters_delta_median);
		free(c_counters_delta_median);
		
		*/
		
	}
	
	
	uint32_t gpu_ticks0 = report0_32[3];
	uint32_t gpu_ticks1 = report1_32[3];
	uint32_t gpu_ticks_delta = gpu_ticks1 - gpu_ticks0;
	// overflow check for clock counters
	int overflow_rdtsc = 0;
	int overflow_gputicks = 0;
	if (cpu_ticks_delta > cpu_ticks0) overflow_rdtsc = 1;
	if (gpu_ticks_delta > gpu_ticks0) overflow_gputicks = 1;
	
	
	// print
	char *filename_rpc = (char *) malloc(255);
	sprintf(filename_rpc, "results/results_rpc_%s_%d_blocks_%d_tpb.csv", kernel_choice, global/local, local);
	printf("\n\nDumping counters to file %s\n", filename_rpc);
	print_reports(report0_32, report1_32, test_oa_format, cpu_ticks0, cpu_ticks1, cpu_cur_freq, gpu_cur_freq, ocl_nanoseconds, papi_values, dump, 0, filename_rpc);
	free(filename_rpc);
	
	
	
	if (!power_smoothing) {
		
		printf("\n");
		printf("CPU_ticks:        %llu\n", cpu_ticks_delta);
		printf("GPU_ticks:        %llu\n", gpu_ticks_delta);
		printf("OCL_ticks:        %llu\n", ocl_nanoseconds);
		printf("CPU_freq:         %llu\n", cpu_cur_freq);
		
		printf("\n");
		printf("CPU time:         %f [s]\n", cpu_ticks_delta/((float)cpu_cur_freq*1.0e3));
		printf("OCL time:         %f [s]\n", ocl_nanoseconds/1.0e9);
		printf("PAPI psys energy: %f [J]\n", papi_values[0]/1.0e9);
		printf("PAPI pkg  energy: %f [J]\n", papi_values[1]/1.0e9);
		printf("PAPI pp0  energy: %f [J]\n", papi_values[2]/1.0e9);
		printf("PAPI dram energy: %f [J]\n", papi_values[3]/1.0e9);
		//printf("PAPI gpu  energy: %f [J]\n", papi_values[4]*(2.3283064365386963e-10));
		
		printf("\n\n");
		printf("Power using CPU_TICKS\n");
		printf("PAPI psys power:  %f [W]\n", (papi_values[0]/1.0e9) / (cpu_ticks_delta/((float)cpu_cur_freq*1.0e3)));
		printf("PAPI pkg  power:  %f [W]\n", (papi_values[1]/1.0e9) / (cpu_ticks_delta/((float)cpu_cur_freq*1.0e3)));
		printf("PAPI pp0  power:  %f [W]\n", (papi_values[2]/1.0e9) / (cpu_ticks_delta/((float)cpu_cur_freq*1.0e3)));
		printf("PAPI dram power:  %f [W]\n", (papi_values[3]/1.0e9) / (cpu_ticks_delta/((float)cpu_cur_freq*1.0e3)));
		//printf("PAPI gpu  power:  %f [W]\n", (papi_values[4]*(2.3283064365386963e-10)) / (cpu_ticks_delta/(cpu_cur_freq*1.0e6)));
		
		printf("\n\n");
		printf("Power using OCL_TIMER\n");
		printf("PAPI psys power:  %f [W]\n", (papi_values[0]/1.0e9) / (ocl_nanoseconds/1.0e9));
		printf("PAPI pkg  power:  %f [W]\n", (papi_values[1]/1.0e9) / (ocl_nanoseconds/1.0e9));
		printf("PAPI pp0  power:  %f [W]\n", (papi_values[2]/1.0e9) / (ocl_nanoseconds/1.0e9));
		printf("PAPI dram power:  %f [W]\n", (papi_values[3]/1.0e9) / (ocl_nanoseconds/1.0e9));
		
		if (overflow_rdtsc) printf("Possible RDTSC overflow\n");
		if (overflow_gputicks) printf("Possible GPU_TICKS overflow\n");
	}
	
	else {
		
		printf("\n");
		printf("CPU_ticks:        %llu\n", cpu_ticks_delta);
		printf("GPU_ticks:        %llu\n", gpu_ticks_delta);
		printf("OCL_ticks:        %llu\n", ocl_nanoseconds);
		printf("CPU_freq:         %llu\n", cpu_cur_freq);
		
		printf("\n");
		printf("CPU time:         %f [s]\n", cpu_ticks_delta_median/((float)cpu_cur_freq*1.0e3));
		printf("OCL time:         %f [s]\n", ocl_nanoseconds_median/1.0e9);
		printf("PAPI psys energy: %f [J]\n", papi_values_median[0]/1.0e9);
		printf("PAPI pkg  energy: %f [J]\n", papi_values_median[1]/1.0e9);
		printf("PAPI pp0  energy: %f [J]\n", papi_values_median[2]/1.0e9);
		printf("PAPI dram energy: %f [J]\n", papi_values_median[3]/1.0e9);
		//printf("PAPI gpu  energy: %f [J]\n", papi_values[4]*(2.3283064365386963e-10));
		
		printf("\n\n");
		printf("Power using CPU_TICKS\n");
		printf("PAPI psys power:  %f [W]\n", (papi_values_median[0]/1.0e9) / (cpu_ticks_delta_median/((float)cpu_cur_freq*1.0e3)));
		printf("PAPI pkg  power:  %f [W]\n", (papi_values_median[1]/1.0e9) / (cpu_ticks_delta_median/((float)cpu_cur_freq*1.0e3)));
		printf("PAPI pp0  power:  %f [W]\n", (papi_values_median[2]/1.0e9) / (cpu_ticks_delta_median/((float)cpu_cur_freq*1.0e3)));
		printf("PAPI dram power:  %f [W]\n", (papi_values_median[3]/1.0e9) / (cpu_ticks_delta_median/((float)cpu_cur_freq*1.0e3)));
		//printf("PAPI gpu  power:  %f [W]\n", (papi_values[4]*(2.3283064365386963e-10)) / (cpu_ticks_delta/(cpu_cur_freq*1.0e6)));
		
		printf("\n\n");
		printf("Power using OCL_TIMER\n");
		printf("PAPI psys power:  %f [W]\n", (papi_values_median[0]/1.0e9) / (ocl_nanoseconds_median/1.0e9));
		printf("PAPI pkg  power:  %f [W]\n", (papi_values_median[1]/1.0e9) / (ocl_nanoseconds_median/1.0e9));
		printf("PAPI pp0  power:  %f [W]\n", (papi_values_median[2]/1.0e9) / (ocl_nanoseconds_median/1.0e9));
		printf("PAPI dram power:  %f [W]\n", (papi_values_median[3]/1.0e9) / (ocl_nanoseconds_median/1.0e9));
		
	}
	
	/*
	FILE *f_power = fopen("results/power_report.txt", "a");
	
	fprintf(f_power, "%s", kernel_choice);
	fprintf(f_power, "PAPI_values:      %llu\n", papi_values);
	fprintf(f_power, "CPU time:         %f [s]\n", cpu_ticks_delta/(cpu_cur_freq*1.0e6));
	fprintf(f_power, "Delta ocl timer: %lu\n", time_end-time_start);
	fprintf(f_power, "Time: %f [s]\n", ocl_nanoseconds/1.0e9);
	fprintf(f_power, "PAPI psys energy: %f [J]\n", papi_values[0]/1.0e9);
	fprintf(f_power, "PAPI pkg  energy: %f [J]\n", papi_values[1]/1.0e9);
	fprintf(f_power, "PAPI pp0  energy: %f [J]\n", papi_values[2]/1.0e9);
	fprintf(f_power, "PAPI dram energy: %f [J]\n", papi_values[3]/1.0e9);
	fprintf(f_power, "PAPI gpu  energy: %f [J]\n", papi_values[4]*(2.3283064365386963e-10));
	fprintf(f_power, "PAPI psys power:  %f [W]\n", (papi_values[0]/1.0e9) / (cpu_ticks_delta/(cpu_cur_freq*1.0e6)));
	fprintf(f_power, "PAPI pkg  power:  %f [W]\n", (papi_values[1]/1.0e9) / (cpu_ticks_delta/(cpu_cur_freq*1.0e6)));
	fprintf(f_power, "PAPI pp0  power:  %f [W]\n", (papi_values[2]/1.0e9) / (cpu_ticks_delta/(cpu_cur_freq*1.0e6)));
	fprintf(f_power, "PAPI dram power:  %f [W]\n", (papi_values[3]/1.0e9) / (cpu_ticks_delta/(cpu_cur_freq*1.0e6)));
	fprintf(f_power, "PAPI gpu  power:  %f [W]\n", (papi_values[4]*(2.3283064365386963e-10)) / (cpu_ticks_delta/(cpu_cur_freq*1.0e6)));
	fprintf(f_power, "\n");
	
	fclose(f_power);
	*/
	
	// cleanup
	
	PAPI_cleanup_eventset(EventSet);
	PAPI_destroy_eventset(&EventSet);
	free(papi_values);
	for(int k=0; k<power_reps; k++) {
		free(papi_values_for_median[k]);
	}
	free(papi_values_for_median);
	free(papi_values_median);
	free(cpu_ticks0_for_median);
	free(cpu_ticks1_for_median);
	free(cpu_ticks_delta_for_median);
	free(ocl_nanoseconds_for_median);
	
	
	CLEANUP_AFTER_GPU_STUFF:
	
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


















/**************************************************************
 * ******************** READ COUNTERS MMIO ********************
 * ************************************************************
 */


/** read_counters_mmio
 * read counters through mmio access to registers
 */
void read_counters_mmio(uint32_t custom_counter_dword) {
	
	uint32_t oaperf_a7_lower_value_start=0, oaperf_a7_lower_value_end=0;
	uint32_t oaperf_a7_upper_value_start=0, oaperf_a7_upper_value_end=0;
    uint32_t oaperf_a8_lower_value_start=0, oaperf_a8_lower_value_end=0;
    uint32_t oaperf_a8_upper_value_start=0, oaperf_a8_upper_value_end=0;
    uint32_t oaperf_a9_lower_value_start=0, oaperf_a9_lower_value_end=0;
    uint32_t oaperf_a9_upper_value_start=0, oaperf_a9_upper_value_end=0;
    uint32_t oaperf_a10_lower_value_start=0, oaperf_a10_lower_value_end=0;
    uint32_t oaperf_a10_upper_value_start=0, oaperf_a10_upper_value_end=0;
    uint32_t oaperf_a11_lower_value_start=0, oaperf_a11_lower_value_end=0;
    uint32_t oaperf_a11_upper_value_start=0, oaperf_a11_upper_value_end=0;
    uint32_t oaperf_a12_lower_value_start=0, oaperf_a12_lower_value_end=0;
    uint32_t oaperf_a12_upper_value_start=0, oaperf_a12_upper_value_end=0;
    uint32_t oaperf_a13_lower_value_start=0, oaperf_a13_lower_value_end=0;
    uint32_t oaperf_a13_upper_value_start=0, oaperf_a13_upper_value_end=0;
    uint32_t oaperf_a14_lower_value_start=0, oaperf_a14_lower_value_end=0;
    uint32_t oaperf_a14_upper_value_start=0, oaperf_a14_upper_value_end=0;
    uint32_t oaperf_a15_lower_value_start=0, oaperf_a15_lower_value_end=0;
    uint32_t oaperf_a15_upper_value_start=0, oaperf_a15_upper_value_end=0;
    uint32_t oaperf_a16_lower_value_start=0, oaperf_a16_lower_value_end=0;
    uint32_t oaperf_a16_upper_value_start=0, oaperf_a16_upper_value_end=0;
    uint32_t oaperf_a17_lower_value_start=0, oaperf_a17_lower_value_end=0;
    uint32_t oaperf_a17_upper_value_start=0, oaperf_a17_upper_value_end=0;
    uint32_t oaperf_a18_lower_value_start=0, oaperf_a18_lower_value_end=0;
    uint32_t oaperf_a18_upper_value_start=0, oaperf_a18_upper_value_end=0;
    uint32_t oaperf_a19_lower_value_start=0, oaperf_a19_lower_value_end=0;
    uint32_t oaperf_a19_upper_value_start=0, oaperf_a19_upper_value_end=0;
    uint32_t oaperf_a20_lower_value_start=0, oaperf_a20_lower_value_end=0;
    uint32_t oaperf_a20_upper_value_start=0, oaperf_a20_upper_value_end=0;
	
	// prelminaries
	
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
	
	
	
	
	
	
	
	
	
	struct pci_device *pci_dev = intel_get_pci_device();
    uint32_t devid, gen;
	int mmio_bar, mmio_size;
	int err;
	
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
	
	
	
	
	
	// PAPI vars
	int retval;
	int native;
	int numEvents = 1;
	char *EventNames[] = {"PAPI_L1_DCM"};
	//char *EventNames[] = {"PP0_ENERGY:PACKAGE0"};
	
	// PAPI init
	retval = PAPI_library_init(PAPI_VER_CURRENT);
	if (retval != PAPI_VER_CURRENT) {
		fprintf(stderr, KRED "PAPI library init error at line %d\nError: %s" KNRM, __LINE__, PAPI_strerror(retval));
		exit(1);
	}
	
	// create event set
	EventSet = PAPI_NULL;
	retval = PAPI_create_eventset(&EventSet);
	if (retval != PAPI_OK) {
		fprintf(stderr, KRED "PAPI create eventset error at line %d\nError: %s" KNRM, __LINE__, PAPI_strerror(retval));
		exit(1);
	}
	
	// iterate events
	for (int i = 0; i < numEvents; i++) {
		
		retval = PAPI_event_name_to_code(EventNames[i], &native);
		if (retval != PAPI_OK) {
			fprintf(stderr, KRED "PAPI retrieve event code error at line %d\nError: %s" KNRM, __LINE__, PAPI_strerror(retval));
			exit(1);
		}
		
		retval = PAPI_add_event(EventSet, native);
		if (retval != PAPI_OK) {
			fprintf(stderr, KRED "PAPI add event error at line %d\nError: %s" KNRM, __LINE__, PAPI_strerror(retval));
			exit(1);
		}
	}
	
	
	
	err = intel_register_access_init(pci_dev, 0, drm_fd);
	if (err==-1) {
		fprintf(stderr, KRED "error at intel_register_access_init()\n", KNRM);
		exit(1);
	}
	
	
	// config
	uint32_t oacontrol_default = INREG(oacontrol);
	OUTREG(oacontrol, counter_format << OACONTROL_COUNTER_SELECT_SHIFT | PERFORMANCE_COUNTER_ENABLE);
		
	// configure aggregated counters
	if (custom_counter_dword != 0) OUTREG(eu_perf_cnt_ctl_0_addr, custom_counter_dword);
	else CONFIG_COUNTERS
	
	
	
	
	oaperf_a7_lower_value_start = INREG(oaperf_a7_lower_addr);
	oaperf_a7_upper_value_start = INREG(oaperf_a7_upper_addr);
	oaperf_a8_lower_value_start = INREG(oaperf_a8_lower_addr);
	oaperf_a8_upper_value_start = INREG(oaperf_a8_upper_addr);
	oaperf_a9_lower_value_start = INREG(oaperf_a9_lower_addr);
	oaperf_a9_upper_value_start = INREG(oaperf_a9_upper_addr);
	oaperf_a10_lower_value_start = INREG(oaperf_a10_lower_addr);
	oaperf_a10_upper_value_start = INREG(oaperf_a10_upper_addr);
	oaperf_a11_lower_value_start = INREG(oaperf_a11_lower_addr);
	oaperf_a11_upper_value_start = INREG(oaperf_a11_upper_addr);
	oaperf_a12_lower_value_start = INREG(oaperf_a12_lower_addr);
	oaperf_a12_upper_value_start = INREG(oaperf_a12_upper_addr);
	oaperf_a13_lower_value_start = INREG(oaperf_a13_lower_addr);
	oaperf_a13_upper_value_start = INREG(oaperf_a13_upper_addr);
	oaperf_a14_lower_value_start = INREG(oaperf_a14_lower_addr);
	oaperf_a14_upper_value_start = INREG(oaperf_a14_upper_addr);
	oaperf_a15_lower_value_start = INREG(oaperf_a15_lower_addr);
	oaperf_a15_upper_value_start = INREG(oaperf_a15_upper_addr);
	oaperf_a16_lower_value_start = INREG(oaperf_a16_lower_addr);
	oaperf_a16_upper_value_start = INREG(oaperf_a16_upper_addr);
	oaperf_a17_lower_value_start = INREG(oaperf_a17_lower_addr);
	oaperf_a17_upper_value_start = INREG(oaperf_a17_upper_addr);
	oaperf_a18_lower_value_start = INREG(oaperf_a18_lower_addr);
	oaperf_a18_upper_value_start = INREG(oaperf_a18_upper_addr);
	oaperf_a19_lower_value_start = INREG(oaperf_a19_lower_addr);
	oaperf_a19_upper_value_start = INREG(oaperf_a19_upper_addr);
	oaperf_a20_lower_value_start = INREG(oaperf_a20_lower_addr);
	oaperf_a20_upper_value_start = INREG(oaperf_a20_upper_addr);
	
	/*
	retval = PAPI_start(EventSet);
	if (retval != PAPI_OK) {
		fprintf(srderr, KRED "PAPI start error at line %d\nError: %s" KNRM, __LINE__, PAPI_strerror(retval));
		exit(1);
	}
	*/

	cpu_ticks0 = read_tsc_start();

	// do work
    ret = clEnqueueNDRangeKernel(command_queue, kernel, 1, NULL, &global, &local, 0, NULL, NULL); clCheckError(ret, __LINE__);
    clFlush(command_queue); clCheckError(ret, __LINE__);
    clFinish(command_queue); clCheckError(ret, __LINE__);
	
    cpu_ticks1 = read_tsc_end();
	
	/*
	retval = PAPI_stop(EventSet, &papi_values);
	if (retval != PAPI_OK) {
		fprintf(stderr, KRED "PAPI stop error at line %d\nError: %s" KNRM, __LINE__, PAPI_strerror(retval));
		exit(1);
	}
	*/
	
	if (custom_counter_dword != 0) OUTREG(eu_perf_cnt_ctl_0_addr, custom_counter_dword);
	else CONFIG_COUNTERS

	oaperf_a7_lower_value_end = INREG(oaperf_a7_lower_addr);
	oaperf_a7_upper_value_end = INREG(oaperf_a7_upper_addr);
	oaperf_a8_lower_value_end = INREG(oaperf_a8_lower_addr);
	oaperf_a8_upper_value_end = INREG(oaperf_a8_upper_addr);
	oaperf_a9_lower_value_end = INREG(oaperf_a9_lower_addr);
	oaperf_a9_upper_value_end = INREG(oaperf_a9_upper_addr);
	oaperf_a10_lower_value_end = INREG(oaperf_a10_lower_addr);
	oaperf_a10_upper_value_end = INREG(oaperf_a10_upper_addr);
	oaperf_a11_lower_value_end = INREG(oaperf_a11_lower_addr);
	oaperf_a11_upper_value_end = INREG(oaperf_a11_upper_addr);
	oaperf_a12_lower_value_end = INREG(oaperf_a12_lower_addr);
	oaperf_a12_upper_value_end = INREG(oaperf_a12_upper_addr);
	oaperf_a13_lower_value_end = INREG(oaperf_a13_lower_addr);
	oaperf_a13_upper_value_end = INREG(oaperf_a13_upper_addr);
	oaperf_a14_lower_value_end = INREG(oaperf_a14_lower_addr);
	oaperf_a14_upper_value_end = INREG(oaperf_a14_upper_addr);
	oaperf_a15_lower_value_end = INREG(oaperf_a15_lower_addr);
	oaperf_a15_upper_value_end = INREG(oaperf_a15_upper_addr);
	oaperf_a16_lower_value_end = INREG(oaperf_a16_lower_addr);
	oaperf_a16_upper_value_end = INREG(oaperf_a16_upper_addr);
	oaperf_a17_lower_value_end = INREG(oaperf_a17_lower_addr);
	oaperf_a17_upper_value_end = INREG(oaperf_a17_upper_addr);
	oaperf_a18_lower_value_end = INREG(oaperf_a18_lower_addr);
	oaperf_a18_upper_value_end = INREG(oaperf_a18_upper_addr);
	oaperf_a19_lower_value_end = INREG(oaperf_a19_lower_addr);
	oaperf_a19_upper_value_end = INREG(oaperf_a19_upper_addr);
	oaperf_a20_lower_value_end = INREG(oaperf_a20_lower_addr);
	oaperf_a20_upper_value_end = INREG(oaperf_a20_upper_addr);
	
	OUTREG(oacontrol, oacontrol_default);
	
	intel_register_access_fini();
	
	
	uint64_t oaperf_a7_start = (((uint64_t) oaperf_a7_upper_value_start) << 32) | (uint64_t) oaperf_a7_lower_value_start;
	uint64_t oaperf_a8_start = (((uint64_t) oaperf_a8_upper_value_start) << 32) | (uint64_t) oaperf_a8_lower_value_start;
	uint64_t oaperf_a9_start = (((uint64_t) oaperf_a9_upper_value_start) << 32) | (uint64_t) oaperf_a9_lower_value_start;
	uint64_t oaperf_a10_start = (((uint64_t) oaperf_a10_upper_value_start) << 32) | (uint64_t) oaperf_a10_lower_value_start;
	uint64_t oaperf_a11_start = (((uint64_t) oaperf_a11_upper_value_start) << 32) | (uint64_t) oaperf_a11_lower_value_start;
	uint64_t oaperf_a12_start = (((uint64_t) oaperf_a12_upper_value_start) << 32) | (uint64_t) oaperf_a12_lower_value_start;
	uint64_t oaperf_a13_start = (((uint64_t) oaperf_a13_upper_value_start) << 32) | (uint64_t) oaperf_a13_lower_value_start;
	uint64_t oaperf_a14_start = (((uint64_t) oaperf_a14_upper_value_start) << 32) | (uint64_t) oaperf_a14_lower_value_start;
	uint64_t oaperf_a15_start = (((uint64_t) oaperf_a15_upper_value_start) << 32) | (uint64_t) oaperf_a15_lower_value_start;
	uint64_t oaperf_a16_start = (((uint64_t) oaperf_a16_upper_value_start) << 32) | (uint64_t) oaperf_a16_lower_value_start;
	uint64_t oaperf_a17_start = (((uint64_t) oaperf_a17_upper_value_start) << 32) | (uint64_t) oaperf_a17_lower_value_start;
	uint64_t oaperf_a18_start = (((uint64_t) oaperf_a18_upper_value_start) << 32) | (uint64_t) oaperf_a18_lower_value_start;
	uint64_t oaperf_a19_start = (((uint64_t) oaperf_a19_upper_value_start) << 32) | (uint64_t) oaperf_a19_lower_value_start;
	uint64_t oaperf_a20_start = (((uint64_t) oaperf_a20_upper_value_start) << 32) | (uint64_t) oaperf_a20_lower_value_start;
	
	uint64_t oaperf_a7_end = (((uint64_t) oaperf_a7_upper_value_end) << 32) | (uint64_t) oaperf_a7_lower_value_end;
	uint64_t oaperf_a8_end = (((uint64_t) oaperf_a8_upper_value_end) << 32) | (uint64_t) oaperf_a8_lower_value_end;
	uint64_t oaperf_a9_end = (((uint64_t) oaperf_a9_upper_value_end) << 32) | (uint64_t) oaperf_a9_lower_value_end;
	uint64_t oaperf_a10_end = (((uint64_t) oaperf_a10_upper_value_end) << 32) | (uint64_t) oaperf_a10_lower_value_end;
	uint64_t oaperf_a11_end = (((uint64_t) oaperf_a11_upper_value_end) << 32) | (uint64_t) oaperf_a11_lower_value_end;
	uint64_t oaperf_a12_end = (((uint64_t) oaperf_a12_upper_value_end) << 32) | (uint64_t) oaperf_a12_lower_value_end;
	uint64_t oaperf_a13_end = (((uint64_t) oaperf_a13_upper_value_end) << 32) | (uint64_t) oaperf_a13_lower_value_end;
	uint64_t oaperf_a14_end = (((uint64_t) oaperf_a14_upper_value_end) << 32) | (uint64_t) oaperf_a14_lower_value_end;
	uint64_t oaperf_a15_end = (((uint64_t) oaperf_a15_upper_value_end) << 32) | (uint64_t) oaperf_a15_lower_value_end;
	uint64_t oaperf_a16_end = (((uint64_t) oaperf_a16_upper_value_end) << 32) | (uint64_t) oaperf_a16_lower_value_end;
	uint64_t oaperf_a17_end = (((uint64_t) oaperf_a17_upper_value_end) << 32) | (uint64_t) oaperf_a17_lower_value_end;
	uint64_t oaperf_a18_end = (((uint64_t) oaperf_a18_upper_value_end) << 32) | (uint64_t) oaperf_a18_lower_value_end;
	uint64_t oaperf_a19_end = (((uint64_t) oaperf_a19_upper_value_end) << 32) | (uint64_t) oaperf_a19_lower_value_end;
	uint64_t oaperf_a20_end = (((uint64_t) oaperf_a20_upper_value_end) << 32) | (uint64_t) oaperf_a20_lower_value_end;
	
	uint64_t oaperf_a7_delta = oaperf_a7_end - oaperf_a7_start;
	uint64_t oaperf_a8_delta = oaperf_a8_end - oaperf_a8_start;
	uint64_t oaperf_a9_delta = oaperf_a9_end - oaperf_a9_start;
	uint64_t oaperf_a10_delta = oaperf_a10_end - oaperf_a10_start;
	uint64_t oaperf_a11_delta = oaperf_a11_end - oaperf_a11_start;
	uint64_t oaperf_a12_delta = oaperf_a12_end - oaperf_a12_start;
	uint64_t oaperf_a13_delta = oaperf_a13_end - oaperf_a13_start;
	uint64_t oaperf_a14_delta = oaperf_a14_end - oaperf_a14_start;
	uint64_t oaperf_a15_delta = oaperf_a15_end - oaperf_a15_start;
	uint64_t oaperf_a16_delta = oaperf_a16_end - oaperf_a16_start;
	uint64_t oaperf_a17_delta = oaperf_a17_end - oaperf_a17_start;
	uint64_t oaperf_a18_delta = oaperf_a18_end - oaperf_a18_start;
	uint64_t oaperf_a19_delta = oaperf_a19_end - oaperf_a19_start;
	uint64_t oaperf_a20_delta = oaperf_a20_end - oaperf_a20_start;
	
	
	// print
	printf("\n");
	printf("oaperf_a7_delta  = %lu\n", oaperf_a7_delta);
	printf("oaperf_a8_delta  = %lu\n", oaperf_a8_delta);
	printf("oaperf_a9_delta  = %lu\n", oaperf_a9_delta);
	printf("oaperf_a10_delta = %lu\n", oaperf_a10_delta);
	printf("oaperf_a11_delta = %lu\n", oaperf_a11_delta);
	printf("oaperf_a12_delta = %lu\n", oaperf_a12_delta);
	printf("oaperf_a13_delta = %lu\n", oaperf_a13_delta);
	printf("oaperf_a14_delta = %lu\n", oaperf_a14_delta);
	printf("oaperf_a15_delta = %lu\n", oaperf_a15_delta);
	printf("oaperf_a16_delta = %lu\n", oaperf_a16_delta);
	printf("oaperf_a17_delta = %lu\n", oaperf_a17_delta);
	printf("oaperf_a18_delta = %lu\n", oaperf_a18_delta);
	printf("oaperf_a19_delta = %lu\n", oaperf_a19_delta);
	printf("oaperf_a20_delta = %lu\n", oaperf_a20_delta);
	
	
	//printf("PAPI_values: %llu\n", papi_values);
	
	
	
	
	// cleanup
	
	PAPI_cleanup_eventset(EventSet);
	PAPI_destroy_eventset(&EventSet);
	
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







/**************************************************************
 * ****************** PROFILE THROUGH OPENCL ******************
 * ************************************************************
 */


/** profile_through_opencl
 * get timing information through
 * OpenCL profiling
 */
void profile_through_opencl() {
	
	cl_event event;
	cl_ulong time_start;
	cl_ulong time_end;
	int ret;
	
	// do work
    ret = clEnqueueNDRangeKernel(command_queue, kernel, 1, NULL, &global, &local, 0, NULL, &event); clCheckError(ret, __LINE__);
	ret = clWaitForEvents(1, &event); clCheckError(ret, __LINE__);
    clFlush(command_queue); clCheckError(ret, __LINE__);
    clFinish(command_queue); clCheckError(ret, __LINE__);
	
	clGetEventProfilingInfo(event, CL_PROFILING_COMMAND_START, sizeof(time_start), &time_start, NULL);
	clGetEventProfilingInfo(event, CL_PROFILING_COMMAND_END, sizeof(time_end), &time_end, NULL);
	
	double nanoseconds = time_end-time_start;
	
	printf("Delta ocl timer: %lu\n", time_end-time_start);
	printf("Time: %f [s]\n", nanoseconds/1.0e9);
	
}



