#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-klimtwifi

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1600x2560.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/samsung/klimtwifi/full_klimtwifi.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/common_phones.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := klimtwifi
PRODUCT_NAME := vanir_klimtwifi
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SM-T700

PRODUCT_BUILD_PROP_OVERRIDES += \
PRODUCT_MODEL=SM-T700 \
PRODUCT_NAME=klimtwifi \
PRODUCT_DEVICE=klimtwifi \
TARGET_DEVICE=klimtwifi