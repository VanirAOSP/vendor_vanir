# Squisher Choosing
DHO_VENDOR := vanir

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/480x800.zip:system/media/bootanimation.zip

# Low Volume In call fix - pure hack
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/u8500/CallService.apk:system/app/CallService.apk

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/gsm.mk)
$(call inherit-product, vendor/vanir/products/common.mk)

# Inherit AOSP device configuration for janice
$(call inherit-product, device/samsung/janice/full_janice.mk)

# Setup device specific product configuration
PRODUCT_DEVICE := janice
PRODUCT_NAME := vanir_legacy_janice
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I9070
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9070 TARGET_DEVICE=janice
