#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.config.vc_call_vol_steps=7 \
    ring.delay=0 \
    ro.telephony.call_ring.delay=50 \
    ro.ril.fast.dormancy.rule=0 \
    ro.goo.rom=vanir-e980

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit AOSP device configuration for Optimus G Pro.
$(call inherit-product, device/lge/e980/e980.mk)

# Vanir configuration
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Torch
PRODUCT_PACKAGES += Torch

# Setup device specific product configuration.
PRODUCT_NAME := vanir_e980
PRODUCT_DEVICE := e980
PRODUCT_BRAND := lge
PRODUCT_MODEL := Optimus G Pro
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=>geefhd_open_eu BUILD_FINGERPRINT=lge/geefhd_open_eu/geefhd:5.1/LMY48I/E98610b.1373081564:user/release-keys PRIVATE_BUILD_DESC="geefhd_open_eu-user 5.1 LMY48I E98610b.1373081564 release-keys"
