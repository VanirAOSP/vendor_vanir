#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.config.vc_call_vol_steps=7 \
    ring.delay=0 \
    ro.telephony.call_ring.delay=50 \
    ro.ril.fast.dormancy.rule=0 \
    ro.goo.rom=vanir-MAKO

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/768x1280.zip:system/media/bootanimation.zip

# Inherit AOSP device configuration for mako.
$(call inherit-product, device/lge/mako/full_mako.mk)

# Vanir configuration
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Setup device specific product configuration.
PRODUCT_NAME := vanir_mako
PRODUCT_DEVICE := mako
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:5.1/LMY47D/937116:user/release-keys PRIVATE_BUILD_DESC="occam-user 5.1 LMY47D 937116 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch
