LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := Latinimegoogle
LOCAL_MODULE_OWNER := google
LOCAL_MODULE_TAGS := optional

LOCAL_POST_INSTALL_CMD := \
    ln -sf /system/lib/libjni_latinime.so $(PRODUCT_OUT)/system/lib/libjni_latinimegoogle.so

include $(BUILD_PHONY_PACKAGE)


include $(CLEAR_VARS)

LOCAL_MODULE := Latinimegoogle64
LOCAL_MODULE_OWNER := google
LOCAL_MODULE_TAGS := optional

LOCAL_POST_INSTALL_CMD := \
    ln -sf /system/lib64/libjni_latinime.so $(PRODUCT_OUT)/system/lib64/libjni_latinimegoogle.so

include $(BUILD_PHONY_PACKAGE)
