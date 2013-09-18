#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-m7tmo

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/gsm.mk)
$(call inherit-product, vendor/vanir/config/nfc_enhanced.mk)

# Inherit model specific configuration.
$(call inherit-product, vendor/vanir/products/vanir_m7.mk)

# Inherit AOSP device configuration for HTC One.
$(call inherit-product, device/htc/m7ul/full_m7tmo.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := vanir_m7tmo
PRODUCT_DEVICE := m7tmo
PRODUCT_BRAND := HTC
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := One

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m7 BUILD_ID=JZO54K BUILD_FINGERPRINT="tmous/m7/m7:4.1.2/JLS36C/170484.7:user/release-keys" PRIVATE_BUILD_DESC="1.27.531.7 CL170484 release-keys"