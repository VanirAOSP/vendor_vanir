# Squisher Choosing
DHO_VENDOR := vanir

# Boot
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-cancro

# Enhanced NFC
$(call inherit-product, vendor/vanir/config/nfc_enhanced.mk)

# Inherit some common Vanir stuff 
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/cancro/full_cancro.mk)

PRODUCT_NAME := vanir_cancro
PRODUCT_DEVICE := cancro
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := MI Cancro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
