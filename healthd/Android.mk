LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := healthd_board_msm.cpp
LOCAL_MODULE := libhealthd.$(TARGET_BOARD_PLATFORM)
LOCAL_CFLAGS := -Werror
ifeq ($(RECOVERY_VARIANT),carliv)
LOCAL_C_INCLUDES := system/core/healthd bootable/recovery-carliv
else
LOCAL_C_INCLUDES := system/core/healthd bootable/recovery
endif
include $(BUILD_STATIC_LIBRARY)