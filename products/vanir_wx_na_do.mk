# Inherit device configuration for wx_na_wf.
$(call inherit-product, device/nvidia/wx_na_do/full_wx_na_do.mk)

# Inherit some common EXODUS stuff.
$(call inherit-product, vendor/vanir/products/common_phones.mk)


#Squisher Choosing
DHO_VENDOR := vanir

# Tablet Overlays no radios
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_radio

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit AOSP device configuration for wx_na_wf
$(call inherit-product, device/nvidia/wx_na_do/full_wx_na_do.mk)

# Inherit common product files.
$(call inherit-product, vendor/vanir/products/common_tabs.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=wx_na_do \
    TARGET_DEVICE=shieldtablet \
    BUILD_FINGERPRINT="nvidia/wx_na_do/shieldtablet:5.0.1/LRX22C/29082_493.9700:user/release-keys" \
    PRIVATE_BUILD_DESC="wx_na_do-user 5.0.1 LRX22C 29082_493.9700 release-keys"

PRODUCT_NAME := vanir_wx_na_do
PRODUCT_DEVICE := wx_na_do
