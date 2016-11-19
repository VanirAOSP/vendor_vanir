#Squisher Choosing
DHO_VENDOR := vanir

# Run these first or they will not stick
PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=vanir-FLO

# Tablet Overlays no radios
PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_no_radio

# Boot Animation
PRODUCT_COPY_FILES += vendor/vanir/proprietary/boot_animations/1280x1920.zip:system/media/bootanimation.zip

# Inherit AOSP device configuration for grouper
$(call inherit-product, device/asus/flo/full_flo.mk)

# Inherit common product files.
NEXUS_CATEGORY := tabs
$(call inherit-product, vendor/vanir/products/common_nexus.mk)

# Setup device specific product configuration.
PRODUCT_NAME := vanir_flo
PRODUCT_BRAND := google
PRODUCT_DEVICE := flo
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=razor BUILD_FINGERPRINT=google/razor/flo:6.0.1/MOB30X/3036618:user/release-keys PRIVATE_BUILD_DESC="razor-user 6.0.1 MOB30X 3036618 release-keys"
