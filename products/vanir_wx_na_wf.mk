#Squisher Choosing
DHO_VENDOR := vanir

# Run these first or they will not stick
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-wx_na_wf

# Tablet Overlays no radios
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_no_radio

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1200x1920.zip:system/media/bootanimation.zip

# Inherit common product files.
$(call inherit-product, vendor/vanir/products/common_tabs.mk)

# Inherit AOSP device configuration for shieldtablet (wifi only)
$(call inherit-product, device/nvidia/wx_na_wf/full_wx_na_wf.mk)

# Setup device specific product configuration.
PRODUCT_NAME := vanir_wx_na_wf
PRODUCT_BRAND := nvidia
PRODUCT_DEVICE := wx_na_wf
PRODUCT_MODEL := SHIELD Tablet
PRODUCT_MANUFACTURER := NVIDIA

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=wx_na_wf \
    TARGET_DEVICE=shieldtablet \
    BUILD_FINGERPRINT="nvidia/wx_na_wf/shieldtablet:4.4.2/KOT49H/22229_438.1909:user/release-keys" \
    PRIVATE_BUILD_DESC="wx_na_wf-user 4.4.2 KOT49H 22229_438.1909 release-keys"
