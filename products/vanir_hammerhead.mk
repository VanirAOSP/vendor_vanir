#Squisher Choosing
DHO_VENDOR := vanir

# Run these first or they will not stick
PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=vanir-hammerhead

# Inherit device configuration
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Inherit VANIR files.
NEXUS_CATEGORY := phones
$(call inherit-product, vendor/vanir/products/common_nexus.mk)

# Copy VANIR files
PRODUCT_COPY_FILES += vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hammerhead
PRODUCT_NAME := vanir_hammerhead
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=hammerhead BUILD_FINGERPRINT=google/hammerhead/hammerhead:6.0.1/M4B30X/3237893:user/release-keys PRIVATE_BUILD_DESC="hammerhead-user 6.0.1 M4B30X 3237893 release-keys"
