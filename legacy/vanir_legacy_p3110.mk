#Squisher Choosing
DHO_VENDOR := vanir

# Run these first or they will not stick
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-p3110

# Inherit VANIR files.
$(call inherit-product, vendor/vanir/products/gsm.mk)
$(call inherit-product, vendor/vanir/products/common_tabs.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)

# Copy VANIR files
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/600x1024.zip:system/media/bootanimation.zip

# Inherit VANIR overlays.
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_radio

# Inherit AOSP device configuration for Tab 2 7.0 WiFi + GSM
$(call inherit-product, device/samsung/p3110/full_p3110.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := vanir_legacy_p3110
PRODUCT_DEVICE := p3110
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-P3110

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=espressowifixx TARGET_DEVICE=espressowifi BUILD_FINGERPRINT=samsung/espressowifixx/espressowifi:4.3.1/JLS36I/P3110XWALD2:user/release-keys PRIVATE_BUILD_DESC="espressowifixx-user 4.3.1 JLS36I P3110XWALD2 release-keys"
