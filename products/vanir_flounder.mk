#Squisher Choosing
DHO_VENDOR := vanir

KERNEL_SPAM := AOSP 3.10.0 Prebuilt

# Run these first or they will not stick
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-FLOUNDER

# Tablet Overlays no radios
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_no_radio

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/832x520.zip:system/media/bootanimation.zip

# Inherit AOSP device configuration for grouper
$(call inherit-product, device/htc/flounder/full_flounder.mk)

# Inherit common product files.
$(call inherit-product, vendor/vanir/products/common_tabs.mk)

# Setup device specific product configuration.
PRODUCT_NAME := vanir_flounder
PRODUCT_BRAND := google
PRODUCT_DEVICE := flounder
PRODUCT_MODEL := Nexus 9
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=volantis TARGET_DEVICE=flounder BUILD_FINGERPRINT=google/volantis/flounder:5.1/LRX21L/1546449:user/release-keys PRIVATE_BUILD_DESC="volantis-user 5.1 LRX21L 1546449 release-keys"
