# when this builds, it will probably mess your phone up.
# you might want to wait to try this unless you have a giant pair of low-hanging huevos
ifneq ($(ENABLE_FORCED_ENCRYPTION),true)
PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=vanir-shamu-encrypted
else
PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=vanir-shamu
endif

# Boot Animation
PRODUCT_COPY_FILES += vendor/vanir/proprietary/boot_animations/1440x2560.zip:system/media/bootanimation.zip

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Enhanced NFC
$(call inherit-product, vendor/vanir/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := vanir_shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6

TARGET_VENDOR := moto

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=shamu BUILD_FINGERPRINT=google/shamu/shamu:6.0.1/MOB31K/3342486:user/release-keys PRIVATE_BUILD_DESC="shamu-user 6.0.1 MOB31K 3342486 release-keys"
