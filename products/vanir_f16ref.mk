#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-f16ref

# place boot animation here once we make one
# PRODUCT_COPY_FILES += \
#    vendor/vanir/proprietary/mako/media/bootanimation.zip:system/media/bootanimation.zip

# Vanir configuration
$(call inherit-product, vendor/vanir/products/common_tabs.mk)
# $(call inherit-product, vendor/vanir/products/beats_bravia.mk)

# Inherit AOSP device configuration for Midnight
$(call inherit-product, device/amlogic/f16ref/f16ref.mk)

#... and then make the AOSP device configuration for i605 get on its knees and sing the national anthem into our "microphones"
PRODUCT_LOCALES := en_US

# Setup device specific product configuration.
PRODUCT_NAME := vanir_f16ref
PRODUCT_DEVICE := f16ref
PRODUCT_BRAND := Amlogic
PRODUCT_MANUFACTURER := MBX
PRODUCT_MODEL := Gbox Midnight

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=f16ref TARGET_DEVICE=f16ref BUILD_FINGERPRINT="MBX/f16ref/f16ref:4.2.2/JDQ39E/I605VRAMC3:user/release-keys" PRIVATE_BUILD_DESC="f16ref-user 4.2.2 JDQ39E I605VRAMC3 release-keys"
