# Inherit AOSP device configuration for janice
$(call inherit-product, device/samsung/janice/full_janice.mk)
 
# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := GT-I9070

# Setup device specific product configuration
PRODUCT_DEVICE := janice
PRODUCT_NAME := vanir_janice
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I9070
PRODUCT_MANUFACTURER := samsung

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/480x800.zip:system/media/bootanimation.zip

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9070 TARGET_DEVICE=janice
