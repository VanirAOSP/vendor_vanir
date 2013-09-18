#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-m7att

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/gsm.mk)
$(call inherit-product, vendor/vanir/config/nfc_enhanced.mk)

# Inherit model specific configuration.
$(call inherit-product, vendor/vanir/products/vanir_m7.mk)

# Inherit AOSP device configuration for HTC One.
$(call inherit-product, device/htc/m7ul/full_m7att.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := vanir_m7att
PRODUCT_DEVICE := m7att
PRODUCT_BRAND := HTC
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := One

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m7 BUILD_ID=JWR66V.H10 BUILD_FINGERPRINT="htc/m7_google/m7:4.3/JLS36C.H10/230993:user/release-keys" PRIVATE_BUILD_DESC="3.06.1700.10 CL230993 release-keys"
