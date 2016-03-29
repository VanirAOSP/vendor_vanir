LOCAL_PATH := $(call my-dir)

ifneq ($(filter arm64,$(TARGET_ARCH)),)

include $(CLEAR_VARS)
LOCAL_MODULE := webview
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := arm64/app/com.google.android.webview/webview.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_REQUIRED_MODULES := \
        libwebviewchromium_loader \
        libwebviewchromium_plat_support
include $(BUILD_PREBUILT)

else

include $(CLEAR_VARS)
LOCAL_MODULE := webview
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := arm/app/com.google.android.webview/webview.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_REQUIRED_MODULES := \
        libwebviewchromium_loader \
        libwebviewchromium_plat_support
include $(BUILD_PREBUILT)

endif