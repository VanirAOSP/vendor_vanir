#Squisher Choosing
DHO_VENDOR := vanir
 
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-hercules

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/480x480.zip:system/media/bootanimation.zip

# Vanir configuration
$(call inherit-product, vendor/vanir/products/common_phones.mk)
# $(call inherit-product, vendor/vanir/products/beats.mk)
$(call inherit-product, vendor/vanir/products/gsm.mk)
 
# Inherit AOSP device configuration for hercules.
$(call inherit-product, device/samsung/hercules/full_hercules.mk)

# Setup device specific product configuration.
PRODUCT_NAME := vanir_hercules
PRODUCT_DEVICE := hercules
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SAMSUNG-SGH-T989

# Setup device specific product configuration.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-T989 TARGET_DEVICE=SGH-T989 BUILD_FINGERPRINT="samsung/SGH-T989/SGH-T989:4.3/JLS36C/T989UVMC6:user/release-keys" PRIVATE_BUILD_DESC="SGH-T989-user 4.13 JLS36C UVMC6 release-keys"
