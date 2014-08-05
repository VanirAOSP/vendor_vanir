#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-i605

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/768x1280.zip:system/media/bootanimation.zip

# Vanir configuration
$(call inherit-product, vendor/vanir/products/common_phones.mk)
# $(call inherit-product, vendor/vanir/products/beats.mk)

# CDMA APNs and Simcard app
$(call inherit-product, vendor/vanir/products/cdma.mk)

# Inherit AOSP device configuration for Note 2.
$(call inherit-product, device/samsung/i605/full_i605.mk)

# Setup device specific product configuration.
PRODUCT_NAME := vanir_legacy_i605
PRODUCT_DEVICE := i605
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SCH-I605

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t0ltevzw TARGET_DEVICE=t0ltevzw BUILD_FINGERPRINT="Verizon/t0ltevzw/t0ltevzw:4.4.4/KTU84Q/937116:user/release-keys" PRIVATE_BUILD_DESC="t0ltevzw-user 4.4.4 KTU84Q 937116 release-keys"
