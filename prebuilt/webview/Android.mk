LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_ARCH),arm64)

include $(CLEAR_VARS)
LOCAL_MODULE := webview
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := arm64/app/com.google.android.webview/webview.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

else

include $(CLEAR_VARS)
LOCAL_MODULE := webview
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := arm/app/com.google.android.webview/webview.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

endif