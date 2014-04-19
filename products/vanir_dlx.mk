#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-dlx

# Inherit device configuration
$(call inherit-product, device/htc/dlx/full_dlx.mk)
$(call inherit-product, vendor/vanir/products/vanir_m7-common.mk)
$(call inherit-product, vendor/vanir/products/cdma.mk)

# overlays
PRODUCT_PACKAGE_OVERLAYS += device/htc/dlx/overlay

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := dlx
PRODUCT_NAME := vanir_dlx
PRODUCT_BRAND := Verizon
PRODUCT_MODEL := HTC6435LVW
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=dlx BUILD_FINGERPRINT=verizon_wwe/dlx/dlx:4.4.2/KOT49L/147796.1:user/release-keys PRIVATE_BUILD_DESC="2.06.605.1 CL147796 release-keys"
