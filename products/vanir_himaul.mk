#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=vanir-himaul

# Boot Animation
PRODUCT_COPY_FILES += vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Inherit device configuration
$(call inherit-product, device/htc/himaul/full_himaul.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := vanir_himaul
BOARD_VENDOR := htc
TARGET_VENDOR := htc
PRODUCT_DEVICE := himaul

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_DEVICE="htc_himaulatt" PRODUCT_NAME="himaulatt_na_gen_unlock" BUILD_FINGERPRINT="htc/himaulatt_na_gen_unlock/htc_himaulatt:6.0/MRA58K/669696.12:user/release-keys" PRIVATE_BUILD_DESC="3.35.617.12 CL669696 release-keys"
