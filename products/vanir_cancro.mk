# Squisher Choosing
DHO_VENDOR := vanir

# Boot
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-cancro

# Inherit device configuration
$(call inherit-product, device/xiaomi/cancro/cancro.mk)


# Inherit some common Vanir stuff 
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Product configuration
PRODUCT_NAME := vanir_cancro
PRODUCT_DEVICE := cancro
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := MI Cancro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_CONTINUOUS_SPLASH_ENABLED := true

# Device prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="cancro" \
    PRODUCT_NAME="cancro" \
    BUILD_FINGERPRINT="Xiaomi/cancro/cancro:5.1.1/LMY48M/5.9.17:userdebug/test-keys" \
    PRIVATE_BUILD_DESC="cancro-userdebug 5.1.1 LMY48M 5.9.17 test-keys"