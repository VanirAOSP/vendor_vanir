#Squisher Choosing
DHO_VENDOR := vanir

# Run these first or they will not stick
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-otterx

# Tablet Overlays no radios
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_no_radio
    DEVICE_PACKAGE_OVERLAYS += device/amazon/otter-common/overlay/cm

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/800x1280.zip:system/media/bootanimation.zip

# Inherit AOSP device configuration for grouper
$(call inherit-product, device/amazon/otterx/full_otterx.mk)

# Inherit common product files.
$(call inherit-product, vendor/vanir/products/common_tabs.mk)

# Setup device specific product configuration.
PRODUCT_NAME := vanir_otterx
PRODUCT_DEVICE := otterx
PRODUCT_BRAND := google
PRODUCT_MODEL := Amazon OtterX
PRODUCT_MANUFACTURER := android
