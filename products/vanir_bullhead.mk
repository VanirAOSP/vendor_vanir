# Boot Animation
PRODUCT_COPY_FILES += vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit common phone stuff
NEXUS_CATEGORY := phones
$(call inherit-product, vendor/vanir/products/common_nexus.mk)

# Enhanced NFC
$(call inherit-product, vendor/vanir/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/bullhead/aosp_bullhead.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := vanir_bullhead
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5X
TARGET_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=bullhead BUILD_FINGERPRINT=google/bullhead/bullhead:6.0.1/MTC20K/3142008:user/release-keys PRIVATE_BUILD_DESC="bullhead-user 6.0.1 MTC20K 3142008 release-keys"
