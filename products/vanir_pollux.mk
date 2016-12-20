#Squisher Choosing
DHO_VENDOR := vanir

# Run these first or they will not stick
PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=vanir-pollux

# Tablet Overlays with radios
PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_radio

# GSM APNs and Simcard app

# Boot Animation
PRODUCT_COPY_FILES += vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit common product files.
$(call inherit-product, vendor/vanir/products/common_tabs.mk)

# Inherit AOSP device configuration for Tablet Z GSM
$(call inherit-product, device/sony/pollux/full_pollux.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := vanir_pollux
PRODUCT_DEVICE := pollux
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := SGP321

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGP321 BUILD_FINGERPRINT=Sony/SGP321/SGP321:5.1.1/10.7.A.0.222/2921970873:user/release-keys PRIVATE_BUILD_DESC="SGP321-user 5.1.1 10.7.A.0.222 2921970873 test-keys"

