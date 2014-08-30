#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# Vanir configuration
$(call inherit-product, vendor/vanir/products/common_tabs.mk)

# Inherit device configuration for shieldtablet (wifi only)
$(call inherit-product, device/nvidia/wx_na_wf/full_wx_na_wf.mk)

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1200x1920.zip:system/media/bootanimation.zip

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=wx_na_wf \
    TARGET_DEVICE=shieldtablet \
    BUILD_ID := KOT49H \
    BUILD_DISPLAY_ID := KOT49H.22229_440.9583 \
    BUILD_FINGERPRINT="nvidia/wx_na_wf/shieldtablet:4.4.2/KOT49H/22229_440.9583:user/release-keys" \
    PRIVATE_BUILD_DESC="wx_na_wf-user 4.4.2 KOT49H 22229_440.9583 release-keys"

# Setup device specific product configuration.
PRODUCT_NAME := vanir_wx_na_wf

# Enable Nvidia apps in play store
PRODUCT_GMS_CLIENTID_BASE := android-nvidia
