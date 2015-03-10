#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-mint

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/sony/mint/full_mint.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/common_phones.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mint
PRODUCT_NAME := vanir_mint
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := Xperia T

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=LT30i BUILD_FINGERPRINT=Sony/LT30i_1268-6904/LT30i:5.1/9.1.A.1.140/c_t_tw:user/release-keys PRIVATE_BUILD_DESC="LT30i-user 5.1 9.1.A.1.140 c_t_tw test-keys"
