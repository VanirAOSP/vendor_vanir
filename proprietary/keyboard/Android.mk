LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := Latinime
LOCAL_MODULE_SUFFIX :=.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_PRELINK_MODULE := false
ifdef TARGET_2ND_ARCH
LOCAL_MULTILIB := both
LOCAL_MODULE_PATH_64 := system/lib64
LOCAL_MODULE_PATH := ../common/lib64/libjni_latinimegoogle.so
LOCAL_MODULE_PATH_32 := system/lib
LOCAL_MODULE_PATH := ../common/lib/libjni_latinimegoogle.so
else
LOCAL_MODULE_PATH := system/lib
LOCAL_MODULE_PATH := ../common/lib/libjni_latinimegoogle.so
endif
include $(BUILD_PREBUILT)


##### Now Let's Symlink
ifeq ($(TARGET_ARCH),arm)

include $(CLEAR_VARS)

LOCAL_MODULE := Latinimegoogle
LOCAL_MODULE_OWNER := google
LOCAL_MODULE_TAGS := optional

LOCAL_POST_INSTALL_CMD := \
    ln -sf /system/lib/libjni_latinime.so $(PRODUCT_OUT)/system/lib/libjni_latinimegoogle.so

include $(BUILD_PHONY_PACKAGE)

else

include $(CLEAR_VARS)

LOCAL_MODULE := Latinimegoogle
LOCAL_MODULE_OWNER := google
LOCAL_MODULE_TAGS := optional

LOCAL_POST_INSTALL_CMD := \
    ln -sf /system/lib64/libjni_latinime.so $(PRODUCT_OUT)/system/lib64/libjni_latinimegoogle.so

include $(BUILD_PHONY_PACKAGE)

endif
