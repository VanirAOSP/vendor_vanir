#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-find7

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/oppo/find7/full_find7.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/common_phones.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := vanir_find7
PRODUCT_DEVICE := find7
PRODUCT_BRAND := OPPO
PRODUCT_MANUFACTURER := OPPO
PRODUCT_MODEL := Find 7

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=5.1/LMY47D/1390381364:user/release-keys PRIVATE_BUILD_DESC="msm8974-user 5.1 LMY47D eng.root.20140122.170107 release-keys"
