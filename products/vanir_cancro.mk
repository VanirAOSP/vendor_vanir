# Squisher Choosing
DHO_VENDOR := vanir

# Boot
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-cancro

# Inherit device configuration
$(call inherit-product, device/xiaomi/cancro/full_cancro.mk)

# Enhanced NFC
$(call inherit-product, vendor/vanir/config/nfc_enhanced.mk)

# Inherit some common Vanir stuff 
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Product configuration
PRODUCT_NAME := vanir_cancro
PRODUCT_DEVICE := cancro
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := MI3W
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := cancro
TARGET_VENDOR_DEVICE_NAME := MI3W

# Unofficial build id
TARGET_UNOFFICIAL_BUILD_ID := audahadi

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=cancro PRODUCT_NAME=cancro

## Use the latest approved GMS identifiers unless running a signed build
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Xiaomi/cancro/cancro:6.0/MDB08M/5.11.6:userdebug/test-keys PRIVATE_BUILD_DESC="cancro-userdebug 6.0 MDB08M 5.11.6 test-keys"
