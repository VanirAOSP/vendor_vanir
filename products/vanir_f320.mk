#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-f320

# Inherit device configuration
$(call inherit-product, device/lge/f320/f320.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/multi_g2-common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := f320
PRODUCT_NAME := vanir_f320
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-F320
PRODUCT_MANUFACTURER := lge

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=lge/g2_skt_kr/g2:5.1/LMY48I/F320S28d.1418740902:user/release-keys PRIVATE_BUILD_DESC="g2_skt_kr-user 5.1 LMY48I F320S28d.1418740902 release-keys"
