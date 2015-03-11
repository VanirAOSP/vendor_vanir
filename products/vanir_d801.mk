#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-d801

# Inherit device configuration
$(call inherit-product, device/lge/d801/d801.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/multi_g2-common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := d801
PRODUCT_NAME := vanir_d801
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-d801
PRODUCT_MANUFACTURER := lge

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=lge/g2_tmo_us/g2:5.0/LMY47D/D80110d.1376460177:user/release-keys PRIVATE_BUILD_DESC="g2_tmo_us-user 5.0 LMY47D D80110d.1376460177 release-keys"
