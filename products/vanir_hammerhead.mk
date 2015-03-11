#Squisher Choosing
DHO_VENDOR := vanir

# Run these first or they will not stick
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-hammerhead

# Inherit device configuration
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Inherit VANIR files.
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Copy VANIR files
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# MPDecision auto-disabler for kernels (like ours)
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/hammerhead/etc/init.d/00kernelcompat:system/etc/init.d/00kernelcompat \
    vendor/vanir/proprietary/hammerhead/bin/wedontgotoravenholmanymore:system/bin/wedontgotoravenholmanymore \
    vendor/vanir/proprietary/hammerhead/bin/unforeseenconsequences:system/bin/unforeseenconsequences

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hammerhead
PRODUCT_NAME := vanir_hammerhead
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

# Torch
PRODUCT_PACKAGES += Torch

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=hammerhead BUILD_FINGERPRINT=google/hammerhead/hammerhead:5.0/LMY47D/937116:user/release-keys PRIVATE_BUILD_DESC="hammerhead-user 5.0 LMY47D 937116 release-keys"
