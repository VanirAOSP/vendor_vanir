# when this builds, it will probably mess your phone up.
# you might want to wait to try this unless you have a giant pair of low-hanging huevos
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-fugu

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1440x2560.zip:system/media/bootanimation.zip

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_tv.mk)

# Enhanced NFC
$(call inherit-product, vendor/vanir/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/asus/fugu/aosp_fugu.mk)

DEVICE_PACKAGE_OVERLAYS += device/asus/fugu/overlay-cm

## Device identifier. This must come after all inclusions
PRODUCT_NAME := vanir_fugu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus Player
PRODUCT_MANUFACTURER := Asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=fugu \
    BUILD_FINGERPRINT=google/fugu/fugu:5.1.1/LMY48M/1836172:user/release-keys \
    PRIVATE_BUILD_DESC="fugu-user 5.1.1 LMY48M 1836172 release-keys"
