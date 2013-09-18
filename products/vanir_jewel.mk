#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-jewel

# Inherit AOSP device configuration for toro.
$(call inherit-product, device/htc/jewel/jewel.mk)

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/800x1280.zip:system/media/bootanimation.zip 

PRODUCT_PACKAGE_OVERLAYS += \
    vendor/vanir/overlay/cdma_phone

#... and then make the AOSP device configuration for toro get on its knees and sing the national anthem into our "microphones"
PRODUCT_LOCALES := en_US

# Setup device specific product configuration.
PRODUCT_NAME := vanir_jewel
PRODUCT_BRAND := htc
PRODUCT_DEVICE := jewel
PRODUCT_MODEL := EVO 4G LTE
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_jewel BUILD_ID=JLS36C BUILD_FINGERPRINT="htc/jewel/jewel:4.3/JLS36C/147243.3:user/release-keys" PRIVATE_BUILD_DESC="3.16.651.3 CL147243 release-keys"
