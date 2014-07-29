#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-taoshan

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/480x854.zip:system/media/bootanimation.zip

TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

# Inherit device configuration
$(call inherit-product, device/sony/taoshan/taoshan.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/common_phones.mk)
$(call inherit-product, vendor/vanir/products/gsm.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := taoshan
PRODUCT_NAME := vanir_taoshan
PRODUCT_RELEASE_NAME := XperiaL

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C2105_1275-0241 BUILD_FINGERPRINT=Sony/C2105_1275-0241/C2105:4.4.4/15.3.A.0.26/Android.0031:user/release-keys PRIVATE_BUILD_DESC="C2105-user 4.4.4 KTU84Q Android.0031 test-keys"
