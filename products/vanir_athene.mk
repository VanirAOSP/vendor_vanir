# Release name
PRODUCT_RELEASE_NAME := athene

PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip 
#Squisher Choosing
DHO_VENDOR := vanir

# Inherit device configuration
$(call inherit-product, device/motorola/athene/full_athene.mk)

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# device name
PRODUCT_RELEASE_NAME := MOTO G4
PRODUCT_NAME := vanir_athene
PRODUCT_DEVICE := athene
PRODUCT_BRAND := motorola
PRODUCT_MODEL := MOTO G
PRODUCT_MANUFACTURER := MOTOROLA
