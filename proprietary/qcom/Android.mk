LOCAL_PATH := $(call my-dir)

# oppo apq8064 and msm8974 devices have their own QuickBoot, and qbcharger support, so the apk and our init triggers aren't needed
ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
ifneq ($(BOARD_VENDOR),oppo)
VANIR_QUICKBOOT := true
endif
endif

ifeq ($(VANIR_QUICKBOOT),true)

include $(CLEAR_VARS)
LOCAL_MODULE := QuickBoot
LOCAL_SRC_FILES := app/QuickBoot.apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := platform
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := init.vanir.quickboot.rc
LOCAL_SRC_FILES := etc/$(LOCAL_MODULE)
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc
include $(BUILD_PREBUILT)

else

include $(CLEAR_VARS)
LOCAL_MODULE := QuickBoot
LOCAL_MODULE_TAGS := optional
include $(BUILD_PHONY_PACKAGE)

include $(CLEAR_VARS)
LOCAL_MODULE := init.vanir.quickboot.rc
include $(BUILD_PHONY_PACKAGE)

endif
