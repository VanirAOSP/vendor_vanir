# QuickBoot is designed to properly "fake power-off" devices with qcom init tasks

# default: use a nonfunctional placeholder .rc file
QUICKBOOT_RC_FILE := vendor/vanir/proprietary/qcom/etc/init.vanir.quickboot_male_nipple.rc

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
ifneq ($(BOARD_VENDOR),oppo)  # oppo devices don't need these init triggers

QUICKBOOT_RC_FILE := vendor/vanir/proprietary/qcom/etc/init.vanir.quickboot.rc

PRODUCT_PACKAGES += \
    QuickBoot

endif
endif

PRODUCT_COPY_FILES += \
    $(QUICKBOOT_RC_FILE):system/etc/init.vanir.quickboot.rc
