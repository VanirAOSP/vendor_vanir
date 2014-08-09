#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-bacon

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/oneplus/bacon/full_bacon.mk)

# Inherit common commotio files.
$(call inherit-product, vendor/vanir/products/common_phones.mk)
$(call inherit-product, vendor/vanir/products/gsm.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := bacon
PRODUCT_NAME := vanir_bacon
PRODUCT_BRAND := oneplus
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := A0001
PRODUCT_GMS_CLIENTID_BASE := android-oneplus
TARGET_CONTINUOUS_SPLASH_ENABLED := true

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=oneplus/bacon/A0001:4.4.4/KTU84Q/XNPH25R:user/release-keys PRIVATE_BUILD_DESC="bacon-user 4.4.4 KTU84Q XNPH25R release-keys"
