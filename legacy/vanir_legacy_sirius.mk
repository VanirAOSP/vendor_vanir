#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-sirius

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/sony/sirius/full_sirius.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/common_phones.mk)
$(call inherit-product, vendor/vanir/products/gsm.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sirius
PRODUCT_NAME := vanir_legacy_sirius
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := Xperia Z2

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C6903 BUILD_FINGERPRINT=Sony/D6503/D6503:4.4.4/17.1.A.2.55/yPd_dw:user/release-keys PRIVATE_BUILD_DESC="D6503-user 4.4.4 17.1.A.2.55 yPd_dw release-keys"