# Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-amami \
    drm.service.enabled=true

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

# Inherit Vanir common Phone stuff.
$(call inherit-product, vendor/vanir/products/common_phones.mk)

#Go and build Amami
$(call inherit-product, device/sony/amami/full_amami.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := amami
PRODUCT_NAME := vanir_amami
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia Z1 Compact
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=D5503 BUILD_FINGERPRINT=Sony/D5503/D5503:5.1/14.4.A.0.133/k___jQ:user/release-keys PRIVATE_BUILD_DESC="D5503-user 5.1 14.4.A.0.133 k___jQ release-keys"
