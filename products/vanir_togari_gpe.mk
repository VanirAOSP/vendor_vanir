# Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-togari_gpe

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit Vanir common Phone stuff.
$(call inherit-product, vendor/vanir/products/common_phones.mk)

#Go and build togari_gpe
$(call inherit-product, device/sony/togari_gpe/full_togari_gpe.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := vanir_togari_gpe
PRODUCT_DEVICE := togari_gpe

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C6806_GPe BUILD_FINGERPRINT=Sony/C6806_GPe/C6806:4.4.3/KTU84L.S1/3056:user/release-keys PRIVATE_BUILD_DESC="C6806-user 4.4.3 KTU84L.S1 3056 test-keys"