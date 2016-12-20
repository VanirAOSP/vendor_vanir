DHO_VENDOR := vanir
# Boot Animation
PRODUCT_COPY_FILES += vendor/vanir/proprietary/boot_animations/480x854.zip:system/media/bootanimation.zip

# Common vanir stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

$(call inherit-product, device/google/sprout8/sprout8.mk)

PRODUCT_NAME := vanir_sprout8
PRODUCT_DEVICE :=sprout8
PRODUCT_BRAND := google
PRODUCT_MANUFACTURER := Google
PRODUCT_MODEL := A1

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=6.0/MRA58M/2280749:user/release-keys PRIVATE_BUILD_DESC="sprout-user 6.0 MRA58M 2280749 release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_DEVICE="sprout8"
