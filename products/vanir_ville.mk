# Release name
PRODUCT_RELEASE_NAME := ville

PRODUCT_COPY_FILES += vendor/vanir/proprietary/boot_animations/540x960.zip:system/media/bootanimation.zip
#Squisher Choosing
DHO_VENDOR := vanir

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Inherit device configuration
$(call inherit-product, device/htc/ville/full_ville.mk)

# Device naming
PRODUCT_DEVICE := ville
PRODUCT_NAME := vanir_ville
PRODUCT_BRAND := htc
PRODUCT_MODEL := One S
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_DEVICE="ville" PRODUCT_NAME="ville" BUILD_FINGERPRINT="htc_europe/ville/ville:4.1.1/JRO03C/128506.8:user/release-keys" PRIVATE_BUILD_DESC="3.16.401.8 CL128506 release-keys"
