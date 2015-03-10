#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    persist.sys.root_access=1 \
    persist.sys.strictmode.visual=0 \
    persist.sys.strictmode.disable=1 \
    ro.goo.rom=vanir-n5.10

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/samsung/n5.10/full_n5.10.mk)

# Inherit common bacon files.
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Inherit VANIR overlays.
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_radio

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := n5.10
PRODUCT_NAME := vanir_n5.10
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-N5.10
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-N5.10 TARGET_DEVICE=GT-N5.10 BUILD_FINGERPRINT="samsung/kona3gxx/kona3g:4.3/JSS15J/N5.10XXBMD1:user/release-keys" PRIVATE_BUILD_DESC="kona3gxx-user 4.3 JSS15J N5.10XXBMD1 release-keys"
