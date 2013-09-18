#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-m7spr

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/gsm.mk)
$(call inherit-product, vendor/vanir/config/nfc_enhanced.mk)

# Inherit model specific configuration.
$(call inherit-product, vendor/vanir/products/vanir_m7.mk)

# Inherit AOSP device configuration for HTC One.
$(call inherit-product, device/htc/m7ul/full_m7spr.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := vanir_m7spr
PRODUCT_DEVICE := m7spr
PRODUCT_BRAND := HTC
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := One

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m7wls BUILD_ID=JZO54K BUILD_FINGERPRINT="htc/m7wls/m7wls:4.1.2/JLS36C/166937.7:user/release-keys" PRIVATE_BUILD_DESC="1.29.651.7 CL166937 release-keys"