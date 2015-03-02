#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-condor

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/540x960.zip:system/media/bootanimation.zip

# Inherit common vanir stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Make the device
$(call inherit-product, device/motorola/condor/full_condor.mk)

PRODUCT_DEVICE := condor
PRODUCT_RELEASE_NAME := MOTO E

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0