LOCAL_PATH := $(call my-dir)

GPU_TOOLS_PATH := $(LOCAL_PATH)/..
IGT_LIB_PATH := $(LOCAL_PATH)

# FIXME: autogenerate this info #
$(GPU_TOOLS_PATH)/config.h:
	@echo "updating config.h"
	@echo '#define PACKAGE_VERSION "1.5"' >> $@ ; \
	echo '#define TARGET_CPU_PLATFORM "android-ia"' >> $@ ;

include $(LOCAL_PATH)/Makefile.sources

include $(CLEAR_VARS)

LOCAL_GENERATED_SOURCES :=       \
	$(IGT_LIB_PATH)/version.h  \
	$(GPU_TOOLS_PATH)/config.h

LOCAL_C_INCLUDES += $(LOCAL_PATH)/.. \
                    $(LOCAL_PATH)/stubs/drm/

LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)

LOCAL_CFLAGS += -DHAVE_LIBDRM_ATOMIC_PRIMITIVES
LOCAL_CFLAGS += -DHAVE_STRUCT_SYSINFO_TOTALRAM
LOCAL_CFLAGS += -DANDROID -DHAVE_LINUX_KD_H
LOCAL_CFLAGS += -std=gnu99 -UNDEBUG
LOCAL_MODULE:= libintel_gpu_tools

LOCAL_SHARED_LIBRARIES := libpciaccess  \
			  libkmod       \
			  libdrm        \
			  libdrm_intel

ifeq ("${ANDROID_HAS_CAIRO}", "1")
    skip_lib_list :=
    LOCAL_C_INCLUDES += $(ANDROID_BUILD_TOP)/external/cairo-1.12.16/src
    LOCAL_CFLAGS += -DANDROID_HAS_CAIRO=1 -DIGT_DATADIR=\".\" -DIGT_SRCDIR=\".\"
else
skip_lib_list := \
    igt_kms.c \
    igt_kms.h \
    igt_fb.c
    -DANDROID_HAS_CAIRO=0
endif

LOCAL_SRC_FILES := $(filter-out %.h $(skip_lib_list),$(lib_source_list))

include $(BUILD_STATIC_LIBRARY)

include $(call first-makefiles-under, $(LOCAL_PATH))

