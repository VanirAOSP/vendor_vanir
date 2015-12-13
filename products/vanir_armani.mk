# Squisher Choosing
DHO_VENDOR := vanir

# Boot
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-armani

# Inherit device configuration
$(call inherit-product, device/xiaomi/armani/full_armani.mk)

# Inherit some common Vanir stuff
$(call inherit-product, vendor/vanir/config/common_phones.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := armani
PRODUCT_NAME := vanir_armani
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := HM 1S
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=armani
