#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-t0lte

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/768x1280.zip:system/media/bootanimation.zip

# Inherit AOSP device configuration for Note 2.
$(call inherit-product, device/samsung/t0lte/full_t0lte.mk)

# Vanir configuration
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# GSM APNs and Simcard app

# Setup device specific product configuration.
PRODUCT_NAME := vanir_t0lte
PRODUCT_DEVICE := t0lte
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-N7105

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t0lte TARGET_DEVICE=t0lte BUILD_FINGERPRINT="samsung/t0ltexx/t0lte:5.0/LMY47D/N7105XXDLL4:user/release-keys" PRIVATE_BUILD_DESC="t0ltexx-user 5.0 LMY47D N7105XXDLL4 release-keys"
