#Squisher Choosing
DHO_VENDOR := vanir

# Run these first or they will not stick
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-pollux_windy

# Tablet Overlays with radios
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_no_radio

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit common product files.
$(call inherit-product, vendor/vanir/products/common_tabs.mk)

# Inherit AOSP device configuration for Tablet Z Wifi
$(call inherit-product, device/sony/pollux_windy/full_pollux_windy.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := vanir_legacy_legacy_pollux_windy
PRODUCT_DEVICE := pollux_windy
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := SGP311

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGP311 BUILD_FINGERPRINT=Sony/SGP311_1272-1907/SGP311:4.4.4/10.1.C.0.344/p35_rw:user/release-keys PRIVATE_BUILD_DESC="SGP311-user 4.4.4 10.1.C.0.344 p35_rw test-keys"
