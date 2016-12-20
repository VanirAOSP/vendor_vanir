LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := Latinimegoogle
LOCAL_MODULE_OWNER := google
LOCAL_MODULE_TAGS := optional


# Sort by ARMs
ifeq ($(TARGET_ARCH),arm64)

LOCAL_POST_INSTALL_CMD := \
    ln -sf /system/lib/libjni_latinime.so $(PRODUCT_OUT)/system/lib/libjni_latinimegoogle.so; \
    cp /vendor/vanir/proprietary/common/lib64/libjni_latinimegoogle.so $(PRODUCT_OUT)/system/lib64/libjni_latinime.so; \
    ln -sf /system/lib64/libjni_latinime.so $(PRODUCT_OUT)/system/lib64/libjni_latinimegoogle.so

include $(BUILD_PHONY_PACKAGE)

else

LOCAL_POST_INSTALL_CMD := \
    ln -sf /system/lib/libjni_latinime.so $(PRODUCT_OUT)/system/lib/libjni_latinimegoogle.so

include $(BUILD_PHONY_PACKAGE)

endif
