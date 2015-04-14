# Release name
PRODUCT_RELEASE_NAME := evita

PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip 
#Squisher Choosing
DHO_VENDOR := vanir

# Inherit device configuration
$(call inherit-product, device/htc/evita/device_evita.mk)

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

#Low-Ram
MODERATE_LOW_RAM_DEVICE := true

# Device naming
PRODUCT_DEVICE := evita
PRODUCT_NAME := vanir_evita
PRODUCT_BRAND := htc
PRODUCT_MODEL := One X
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_evita BUILD_FINGERPRINT=cingular_us/evita/evita:4.1.1/JRO03C/131981.6:user/release-keys PRIVATE_BUILD_DESC="3.18.502.6 CL131981 release-keys"
