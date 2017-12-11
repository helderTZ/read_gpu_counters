/*
 * Copyright © 2017 Intel Corporation
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
 *  Paul Kocialkowski <paul.kocialkowski@linux.intel.com>
 */

#ifndef IGT_ALSA_H
#define IGT_ALSA_H

#include "config.h"

#include <stdbool.h>

struct alsa;

struct alsa *alsa_init(void);
int alsa_open_output(struct alsa *alsa, const char *device_name);
int alsa_open_input(struct alsa *alsa, const char *device_name);
void alsa_close_output(struct alsa *alsa);
void alsa_close_input(struct alsa *alsa);
bool alsa_test_output_configuration(struct alsa *alsa, int channels,
				    int sampling_rate);
bool alsa_test_input_configuration(struct alsa *alsa, int channels,
				   int sampling_rate);
void alsa_configure_output(struct alsa *alsa, int channels,
			   int sampling_rate);
void alsa_configure_input(struct alsa *alsa, int channels,
			  int sampling_rate);
void alsa_register_output_callback(struct alsa *alsa,
				   int (*callback)(void *data, short *buffer, int samples),
				   void *callback_data, int samples_trigger);
void alsa_register_input_callback(struct alsa *alsa,
				  int (*callback)(void *data, short *buffer, int samples),
				  void *callback_data, int samples_trigger);
int alsa_run(struct alsa *alsa, int duration_ms);

#endif
