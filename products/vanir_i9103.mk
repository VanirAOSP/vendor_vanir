#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-i9103

# place boot animation here once we make one
# PRODUCT_COPY_FILES += \
#    vendor/vanir/proprietary/boot_animations/480x800.zip:system/media/bootanimation.zip

# Vanir configuration
$(call inherit-product, vendor/vanir/products/common_phones.mk)
# $(call inherit-product, vendor/vanir/products/beats.mk)

# CDMA APNs and Simcard app
$(call inherit-product, vendor/vanir/products/cdma.mk)

# Inherit AOSP device configuration for Galaxy R.
$(call inherit-product, device/samsung/i9103/full_i9103.mk)

# Setup device specific product configuration.
PRODUCT_NAME := vanir_i9103
PRODUCT_DEVICE := i9103
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-i9103

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9103 TARGET_DEVICE=GT-I9103
