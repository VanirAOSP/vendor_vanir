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

include $(CLEAR_VARS)
LOCAL_MODULE := libwebviewchromium
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH_64 := $(TARGET_OUT)/app/webview/lib/arm64
LOCAL_MODULE_PATH_32 := $(TARGET_OUT)/app/webview/lib/arm
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MULTILIB := both
LOCAL_PROPRIETARY_MODULE := true
LOCAL_SRC_FILES_64 := arm64/app/com.google.android.webview/lib/arm64/libwebviewchromium.so
LOCAL_SRC_FILES_32 := arm64/app/com.google.android.webview/lib/arm/libwebviewchromium.so
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

include $(CLEAR_VARS)
LOCAL_MODULE := libwebviewchromium
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT)/app/webview/lib/arm
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_PROPRIETARY_MODULE := true
LOCAL_SRC_FILES := arm/app/com.google.android.webview/lib/arm/libwebviewchromium.so
include $(BUILD_PREBUILT)

endif