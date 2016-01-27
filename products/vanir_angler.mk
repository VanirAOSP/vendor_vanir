# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1440x2560.zip:system/media/bootanimation.zip

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Enhanced NFC
$(call inherit-product, vendor/vanir/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/angler/aosp_angler.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/angler/overlay-cm

## Device identifier. This must come after all inclusions
PRODUCT_NAME := vanir_angler
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6P

TARGET_VENDOR := huawei

ANGLER_PROP_OVERRIDES := PRODUCT_NAME=angler BUILD_FINGERPRINT=google/angler/angler:6.0.1/MMB29P/2473553:user/release-keys PRIVATE_BUILD_DESC="angler-user 6.0.1 MMB29P 2473553 release-keys" BUILD_ID=MMB29P
PRODUCT_BUILD_PROP_OVERRIDES += ${ANGLER_PROP_OVERRIDES}
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ${ANGLER_PROP_OVERRIDES}
