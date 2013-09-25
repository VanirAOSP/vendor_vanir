#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-jewel

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/cdma.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)

# Vanir Product Overlays
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/vanir/overlay/cdma_phone
    vendor/vanir/proprietary/boot_animations/800x1280.zip:system/media/bootanimation.zip 

# Inherit AOSP device configuration for toro.
$(call inherit-product, device/htc/jewel/jewel.mk)

#... and then make the AOSP device configuration for Jewel get on its knees and sing the national anthem into our "microphones"
PRODUCT_LOCALES := en_US

# Setup device specific product configuration.
PRODUCT_NAME := vanir_jewel
PRODUCT_BRAND := htc
PRODUCT_DEVICE := jewel
PRODUCT_MODEL := EVO 4G LTE
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_jewel BUILD_ID=JLS36G BUILD_FINGERPRINT="htc/jewel/jewel:4.3/JLS36G/14.343.3:user/release-keys" PRIVATE_BUILD_DESC="3.16.651.3 CL14.343 release-keys"
