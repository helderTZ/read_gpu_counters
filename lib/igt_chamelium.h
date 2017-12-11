/*
 * Copyright © 2016 Red Hat Inc.
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
 * Authors: Lyude Paul <lyude@redhat.com>
 */

#ifndef IGT_CHAMELIUM_H
#define IGT_CHAMELIUM_H

#include "config.h"

#include <stdbool.h>
#include <xf86drmMode.h>

#include "igt_debugfs.h"

struct igt_fb;

struct chamelium;
struct chamelium_port;
struct chamelium_frame_dump;
struct chamelium_fb_crc_async_data;

struct chamelium *chamelium_init(int drm_fd);
void chamelium_deinit(struct chamelium *chamelium);
void chamelium_reset(struct chamelium *chamelium);

struct chamelium_port **chamelium_get_ports(struct chamelium *chamelium,
					    int *count);
unsigned int chamelium_port_get_type(const struct chamelium_port *port);
drmModeConnector *chamelium_port_get_connector(struct chamelium *chamelium,
					       struct chamelium_port *port,
					       bool reprobe);
const char *chamelium_port_get_name(struct chamelium_port *port);

void chamelium_plug(struct chamelium *chamelium, struct chamelium_port *port);
void chamelium_unplug(struct chamelium *chamelium, struct chamelium_port *port);
bool chamelium_is_plugged(struct chamelium *chamelium,
			  struct chamelium_port *port);
bool chamelium_port_wait_video_input_stable(struct chamelium *chamelium,
					    struct chamelium_port *port,
					    int timeout_secs);
void chamelium_fire_mixed_hpd_pulses(struct chamelium *chamelium,
				     struct chamelium_port *port, ...);
void chamelium_fire_hpd_pulses(struct chamelium *chamelium,
			       struct chamelium_port *port,
			       int width_msec, int count);
void chamelium_schedule_hpd_toggle(struct chamelium *chamelium,
				   struct chamelium_port *port, int delay_ms,
				   bool rising_edge);
int chamelium_new_edid(struct chamelium *chamelium, const unsigned char *edid);
void chamelium_port_set_edid(struct chamelium *chamelium,
			     struct chamelium_port *port, int edid_id);
bool chamelium_port_get_ddc_state(struct chamelium *chamelium,
				  struct chamelium_port *port);
void chamelium_port_set_ddc_state(struct chamelium *chamelium,
				  struct chamelium_port *port,
				  bool enabled);
void chamelium_port_get_resolution(struct chamelium *chamelium,
				   struct chamelium_port *port,
				   int *x, int *y);
igt_crc_t *chamelium_get_crc_for_area(struct chamelium *chamelium,
				      struct chamelium_port *port,
				      int x, int y, int w, int h);
void chamelium_start_capture(struct chamelium *chamelium,
			     struct chamelium_port *port,
			     int x, int y, int w, int h);
void chamelium_stop_capture(struct chamelium *chamelium, int frame_count);
void chamelium_capture(struct chamelium *chamelium, struct chamelium_port *port,
		       int x, int y, int w, int h, int frame_count);
igt_crc_t *chamelium_read_captured_crcs(struct chamelium *chamelium,
					int *frame_count);
struct chamelium_frame_dump *chamelium_read_captured_frame(struct chamelium *chamelium,
							   unsigned int index);
struct chamelium_frame_dump *chamelium_port_dump_pixels(struct chamelium *chamelium,
							struct chamelium_port *port,
							int x, int y,
							int w, int h);
igt_crc_t *chamelium_calculate_fb_crc(int fd, struct igt_fb *fb);
struct chamelium_fb_crc_async_data *chamelium_calculate_fb_crc_async_start(int fd,
									   struct igt_fb *fb);
igt_crc_t *chamelium_calculate_fb_crc_async_finish(struct chamelium_fb_crc_async_data *fb_crc);
int chamelium_get_captured_frame_count(struct chamelium *chamelium);
int chamelium_get_frame_limit(struct chamelium *chamelium,
			      struct chamelium_port *port,
			      int w, int h);
void chamelium_assert_frame_eq(const struct chamelium *chamelium,
			       const struct chamelium_frame_dump *dump,
			       struct igt_fb *fb);
void chamelium_assert_crc_eq_or_dump(struct chamelium *chamelium,
				     igt_crc_t *reference_crc,
				     igt_crc_t *capture_crc, struct igt_fb *fb,
				     int index);
void chamelium_assert_analog_frame_match_or_dump(struct chamelium *chamelium,
						 struct chamelium_port *port,
						 const struct chamelium_frame_dump *frame,
						 struct igt_fb *fb);
void chamelium_crop_analog_frame(struct chamelium_frame_dump *dump, int width,
				 int height);
void chamelium_destroy_frame_dump(struct chamelium_frame_dump *dump);

#endif /* IGT_CHAMELIUM_H */
