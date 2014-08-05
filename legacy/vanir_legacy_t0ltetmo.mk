#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-T889

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/768x1280.zip:system/media/bootanimation.zip

# Vanir configuration
$(call inherit-product, vendor/vanir/products/common_phones.mk)
# $(call inherit-product, vendor/vanir/products/beats.mk)

# GSM APNs and Simcard app
$(call inherit-product, vendor/vanir/products/gsm.mk)

# Inherit AOSP device configuration for Note 2.
$(call inherit-product, device/samsung/t0ltetmo/full_t0ltetmo.mk)

# Setup device specific product configuration.
PRODUCT_NAME := vanir_legacy_t0ltetmo
PRODUCT_DEVICE := t0ltetmo
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SGH-T889

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t0ltetmo BUILD_FINGERPRINT="samsung/t0ltetmo/t0ltetmo:4.4.4/KTU84Q/937116:user/release-keys" PRIVATE_BUILD_DESC="t0ltetmo-user 4.4.4 KTU84Q 937116 release-keys"
