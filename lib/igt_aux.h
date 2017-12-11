/*
 * Copyright © 2014, 2015 Intel Corporation
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice (including the next
 * paragraph) shall be included in all copies or substantial portions of the
 * Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
 * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
 * IN THE SOFTWARE.
 *
 * Authors:
 *    Daniel Vetter <daniel.vetter@ffwll.ch>
 *
 */

#ifndef IGT_AUX_H
#define IGT_AUX_H

#include <intel_bufmgr.h>
#include <stdbool.h>
#include <stddef.h>
#include <sys/time.h>

#include <i915/gem_submission.h>

extern drm_intel_bo **trash_bos;
extern int num_trash_bos;

/* signal interrupt helpers */

#define MSEC_PER_SEC (1000)
#define USEC_PER_SEC (1000*MSEC_PER_SEC)
#define NSEC_PER_SEC (1000*USEC_PER_SEC)

/* signal interrupt helpers */
#ifdef ANDROID
#include <unistd.h> /* on Android bionic has this implemented */
#else
#define gettid() syscall(__NR_gettid)
#endif

#define sigev_notify_thread_id _sigev_un._tid

/* auxialiary igt helpers from igt_aux.c */
/* generally useful helpers */
void igt_fork_signal_helper(void);
void igt_stop_signal_helper(void);
void igt_suspend_signal_helper(void);
void igt_resume_signal_helper(void);

void igt_fork_shrink_helper(int fd);
void igt_stop_shrink_helper(void);

void igt_fork_hang_detector(int fd);
void igt_stop_hang_detector(void);

struct __igt_sigiter {
	unsigned pass;
};

bool __igt_sigiter_continue(struct __igt_sigiter *iter, bool interrupt);

/**
 * igt_while_interruptible:
 * @enable: enable igt_ioctl interrupting or not
 *
 * Provides control flow such that all drmIoctl() (strictly igt_ioctl())
 * within the loop are forcibly injected with signals (SIGRTMIN).
 *
 * This is useful to exercise ioctl error paths, at least where those can be
 * exercises by interrupting blocking waits, like stalling for the gpu.
 *
 * The code block attached to this macro is run in a loop with doubling the
 * interrupt timeout on each ioctl for every run, until no ioctl gets
 * interrupted any more. The starting timeout is taken to be the signal delivery
 * latency, measured at runtime. This way the any ioctls called from this code
 * block should be exhaustively tested for all signal interruption paths.
 *
 * Note that since this overloads the igt_ioctl(), this method is not useful
 * for widespread signal injection, for example providing coverage of
 * pagefaults. To interrupt everything, see igt_fork_signal_helper().
 */
#define igt_while_interruptible(enable) \
	for (struct __igt_sigiter iter__={}; __igt_sigiter_continue(&iter__, (enable)); )

/**
 * igt_until_timeout:
 * @timeout: timeout in seconds
 *
 * Convenience macro loop to run the provided code block in a loop until the
 * timeout has expired. Of course when an individual execution takes too long,
 * the actual execution time could be a lot longer.
 *
 * The code block will be executed at least once.
 */
#define igt_until_timeout(timeout) \
	for (struct timespec t__={}; igt_seconds_elapsed(&t__) < (timeout); )

/**
 * igt_for_milliseconds:
 * @time: how long to run the loop in milliseconds
 *
 * Convenience macro loop to run the provided code block in a loop until the
 * target interval has expired. Of course when an individual execution takes
 * too long, the actual execution time could be a lot longer.
 *
 * The code block will be executed at least once.
 */
#define igt_for_milliseconds(t) \
	for (struct timespec t__={}; igt_nsec_elapsed(&t__)>>20 < (t); )

void igt_exchange_int(void *array, unsigned i, unsigned j);
void igt_permute_array(void *array, unsigned size,
			   void (*exchange_func)(void *array,
						 unsigned i,
						 unsigned j));
void igt_progress(const char *header, uint64_t i, uint64_t total);
void igt_print_activity(void);
bool igt_check_boolean_env_var(const char *env_var, bool default_value);

bool igt_aub_dump_enabled(void);

/* helpers based upon the libdrm buffer manager */
void igt_init_aperture_trashers(drm_intel_bufmgr *bufmgr);
void igt_trash_aperture(void);
void igt_cleanup_aperture_trashers(void);

/* suspend/hibernate and auto-resume system */

/**
 *  igt_suspend_state:
 *  @SUSPEND_STATE_FREEZE: suspend-to-idle target state, aka S0ix or freeze,
 *			   first non-hibernation state
 *  @SUSPEND_STATE_STANDBY: standby target state, aka S1, second
 *			    non-hibernation state
 *  @SUSPEND_STATE_MEM: suspend-to-mem target state aka S3, third
 *			non-hibernation state
 *  @SUSPEND_STATE_DISK: suspend-to-disk target state, aka S4 or hibernation
 *
 *  Target suspend states used with igt_system_suspend_autoresume().
 *  See /sys/power/state for the available states on a given machine.
 */
enum igt_suspend_state {
	SUSPEND_STATE_FREEZE,
	SUSPEND_STATE_STANDBY,
	SUSPEND_STATE_MEM,
	SUSPEND_STATE_DISK,

	/*< private >*/
	SUSPEND_STATE_NUM,
};

/**
 * igt_suspend_test:
 * @SUSPEND_TEST_NONE: no testing, perform a full suspend/resume cycle
 * @SUSPEND_TEST_FREEZER: complete cycle after freezing all freezable threads
 * @SUSPEND_TEST_DEVICES: complete cycle after the above step and suspending
 *			  devices (before calling the drivers' suspend late and
 *			  no_irq hooks). Platform and system devices are not
 *			  suspended here, see #SUSPEND_TEST_CORE.
 * @SUSPEND_TEST_PLATFORM: complete cycle after all the above steps and calling
 *			   the ACPI platform global control methods (applies
 *			   only with /sys/power/disk set to platform)
 * @SUSPEND_TEST_PROCESSORS: complete cycle after all the above steps and
 *			     disabling non-boot CPUs
 * @SUSPEND_TEST_CORE: complete cycle after all the above steps and suspending
 *		       platform and system devices
 *
 * Test points used with igt_system_suspend_autoresume(). Specifies if and where
 * the suspend sequence is to be terminated.
 */
enum igt_suspend_test {
	SUSPEND_TEST_NONE,
	SUSPEND_TEST_FREEZER,
	SUSPEND_TEST_DEVICES,
	SUSPEND_TEST_PLATFORM,
	SUSPEND_TEST_PROCESSORS,
	SUSPEND_TEST_CORE,

	/*< private >*/
	SUSPEND_TEST_NUM,
};

void igt_system_suspend_autoresume(enum igt_suspend_state state,
				   enum igt_suspend_test test);
void igt_set_autoresume_delay(int delay_secs);
int igt_get_autoresume_delay(enum igt_suspend_state state);

/* dropping priviledges */
void igt_drop_root(void);

void igt_debug_wait_for_keypress(const char *var);
void igt_debug_manual_check(const char *var, const char *expected);

/* sysinfo cross-arch wrappers from intel_os.c */

/* These are separate to allow easier testing when porting, see the comment at
 * the bottom of intel_os.c. */
void intel_purge_vm_caches(int fd);
uint64_t intel_get_avail_ram_mb(void);
uint64_t intel_get_total_ram_mb(void);
uint64_t intel_get_total_swap_mb(void);

int __intel_check_memory(uint64_t count, uint64_t size, unsigned mode,
			 uint64_t *out_required, uint64_t *out_total);
void intel_require_memory(uint64_t count, uint64_t size, unsigned mode);
void intel_require_files(uint64_t count);
#define CHECK_RAM 0x1
#define CHECK_SWAP 0x2

#define min(a, b) ({			\
	typeof(a) _a = (a);		\
	typeof(b) _b = (b);		\
	_a < _b ? _a : _b;		\
})
#define max(a, b) ({			\
	typeof(a) _a = (a);		\
	typeof(b) _b = (b);		\
	_a > _b ? _a : _b;		\
})

#define igt_swap(a, b) do {	\
	typeof(a) _tmp = (a);	\
	(a) = (b);		\
	(b) = _tmp;		\
} while (0)

void igt_lock_mem(size_t size);
void igt_unlock_mem(void);

/**
 * igt_wait:
 * @COND: condition to wait
 * @timeout_ms: timeout in milliseconds
 * @interval_ms: amount of time we try to sleep between COND checks
 *
 * Waits until COND evaluates to true or the timeout passes.
 *
 * It is safe to call this macro if the signal helper is active. The only
 * problem is that the usleep() calls will return early, making us evaluate COND
 * too often, possibly eating valuable CPU cycles.
 *
 * Returns:
 * True of COND evaluated to true, false otherwise.
 */
#define igt_wait(COND, timeout_ms, interval_ms) ({			\
	struct timeval start_, end_, diff_;				\
	int elapsed_ms_;						\
	bool ret_ = false;						\
									\
	igt_assert(gettimeofday(&start_, NULL) == 0);			\
	do {								\
		if (COND) {						\
			ret_ = true;					\
			break;						\
		}							\
									\
		usleep(interval_ms * 1000);				\
									\
		igt_assert(gettimeofday(&end_, NULL) == 0);		\
		timersub(&end_, &start_, &diff_);			\
									\
		elapsed_ms_ = diff_.tv_sec * 1000 +			\
			      diff_.tv_usec / 1000;			\
	} while (elapsed_ms_ < timeout_ms);				\
									\
	if (!ret_ && (COND))						\
		ret_ = true;						\
									\
	ret_;								\
})

struct igt_mean;
void igt_start_siglatency(int sig); /* 0 => SIGRTMIN (default) */
double igt_stop_siglatency(struct igt_mean *result);

void igt_set_module_param(const char *name, const char *val);
void igt_set_module_param_int(const char *name, int val);

int igt_terminate_process(int sig, const char *comm);
void igt_lsof(const char *dpath);

/*
 * This list data structure is a verbatim copy from wayland-util.h from the
 * Wayland project; except that wl_ prefix has been removed.
 */

struct igt_list {
	struct igt_list *prev;
	struct igt_list *next;
};

#define __IGT_INIT_LIST(name) { &(name), &(name) }
#define IGT_LIST(name) struct igt_list name = __IGT_INIT_LIST(name)

static inline void igt_list_init(struct igt_list *list)
{
	list->prev = list;
	list->next = list;
}

static inline void __igt_list_add(struct igt_list *list,
				  struct igt_list *prev,
				  struct igt_list *next)
{
	next->prev = list;
	list->next = next;
	list->prev = prev;
	prev->next = list;
}

static inline void igt_list_add(struct igt_list *elm, struct igt_list *list)
{
	__igt_list_add(elm, list, list->next);
}

static inline void igt_list_add_tail(struct igt_list *elm,
				     struct igt_list *list)
{
	__igt_list_add(elm, list->prev, list);
}

static inline void __igt_list_del(struct igt_list *prev, struct igt_list *next)
{
	next->prev = prev;
	prev->next = next;
}

static inline void igt_list_del(struct igt_list *elm)
{
	__igt_list_del(elm->prev, elm->next);
}

static inline void igt_list_move(struct igt_list *elm, struct igt_list *list)
{
	igt_list_del(elm);
	igt_list_add(elm, list);
}

static inline void igt_list_move_tail(struct igt_list *elm,
				      struct igt_list *list)
{
	igt_list_del(elm);
	igt_list_add_tail(elm, list);
}

static inline bool igt_list_empty(const struct igt_list *list)
{
	return list->next == list;
}

#define container_of(ptr, sample, member)				\
	(typeof(sample))((char *)(ptr) - offsetof(typeof(*sample), member))

#define igt_list_first_entry(head, pos, member) \
	container_of((head)->next, (pos), member)
#define igt_list_last_entry(head, pos, member) \
	container_of((head)->prev, (pos), member)

#define igt_list_next_entry(pos, member) \
	container_of((pos)->member.next, (pos), member)
#define igt_list_prev_entry(pos, member) \
	container_of((pos)->member.prev, (pos), member)

#define igt_list_for_each(pos, head, member)				\
	for (pos = igt_list_first_entry(head, pos, member);		\
	     &pos->member != (head);					\
	     pos = igt_list_next_entry(pos, member))

#define igt_list_for_each_reverse(pos, head, member)			\
	for (pos = igt_list_last_entry(head, pos, member);		\
	     &pos->member != (head);					\
	     pos = igt_list_prev_entry(pos, member))

#define igt_list_for_each_safe(pos, tmp, head, member)			\
	for (pos = igt_list_first_entry(head, pos, member),		\
	     tmp = igt_list_next_entry(pos, member);			\
	     &pos->member != (head);					\
	     pos = tmp, tmp = igt_list_next_entry(pos, member))

#endif /* IGT_AUX_H */
