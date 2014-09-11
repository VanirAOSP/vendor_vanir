#Squisher Choosing
DHO_VENDOR := vanir

# Variable for zip installerscript spam about kernel
KERNEL_SPAM := CM Kernel

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-i9305

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/beats.mk)

# Inherit AOSP device configuration for GS3 LTE (GSM).
$(call inherit-product, device/samsung/i9305/full_i9305.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := vanir_i9305
PRODUCT_DEVICE := i9305
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-I9305

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m3xx TARGET_DEVICE=m3 BUILD_FINGERPRINT="samsung/m3xx/m3:4.4.4/KTU84Q/I9305XXBMA6:user/release-keys" PRIVATE_BUILD_DESC="m3xx-user 4.13 KTU84Q I9305XXBMA6 release-keys"
