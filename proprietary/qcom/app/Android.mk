LOCAL_PATH := $(call my-dir)

# oppo apq8064 and msm8974 devices have their own QuickBoot, and qbcharger support, so our modded QuickBoot is not needed
ifneq ($(BOARD_VENDOR),oppo)

include $(CLEAR_VARS)
LOCAL_MODULE := QuickBoot
LOCAL_SRC_FILES := $(LOCAL_PATH)/QuickBoot.apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := platform
include $(BUILD_PREBUILT)

endif
