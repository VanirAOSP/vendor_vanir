#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-d802

# Inherit device configuration
$(call inherit-product, device/lge/d802/d802.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/multi_g2-common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := d802
PRODUCT_NAME := vanir_d802
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-D802
PRODUCT_MANUFACTURER := lge

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=lge/g2_open_com/g2:5.1/LMY47D/D80210a.1378316352:user/release-keys PRIVATE_BUILD_DESC="g2_open_com-user 5.1 LMY47D D80210a.1378316352 release-keys"
