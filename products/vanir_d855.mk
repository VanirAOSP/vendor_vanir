#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-d855

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1440x2560.zip:system/media/bootanimation.zip

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Inherit device configuration
$(call inherit-product, device/lge/d855/full_d855.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := d855
PRODUCT_NAME := vanir_d855

