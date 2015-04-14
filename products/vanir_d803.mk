#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-d803

# Inherit device configuration
$(call inherit-product, device/lge/d803/d803.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/multi_g2-common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := d803
PRODUCT_NAME := vanir_d803
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-D803
PRODUCT_MANUFACTURER := lge

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d803 BUILD_FINGERPRINT=lge/g2_ca/g2:5.1/LMY47O/D80310c.1376399304:user/release-keys PRIVATE_BUILD_DESC="g2_ca-user 5.1 LMY47O D80310c.1376399304 release-keys"
