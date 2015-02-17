#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-golden

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/480x800.zip:system/media/bootanimation.zip

# Low Volume In call fix - pure hack
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/u8500/CallService.apk:system/app/CallService.apk

# Inherit device configuration
$(call inherit-product, device/samsung/golden/full_golden.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/common_phones.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := golden
PRODUCT_NAME := vanir_golden
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-I8190

# Set build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=vanir_golden BUILD_FINGERPRINT=vaniraosp/vanir_golden/golden:5.0/$(BUILD_ID) PRIVATE_BUILD_DESC="GT-I8190  5.0"
