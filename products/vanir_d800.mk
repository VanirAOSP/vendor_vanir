#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += drm.service.enabled=true ro.goo.rom=vanir-d800

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/multi_g2-common.mk)

# Inherit device configuration
$(call inherit-product, device/lge/d800/d800.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := d800
PRODUCT_NAME := vanir_d800
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-D800
PRODUCT_MANUFACTURER := lge

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=lge/g2_att_us/g2:5.0.2/LRX22G/150722227a363:user/release-keys PRIVATE_BUILD_DESC="g2_att_us-user 5.0.2 LRX22G 150722227a363 release-keys"
