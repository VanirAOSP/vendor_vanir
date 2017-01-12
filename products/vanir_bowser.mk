#Squisher Choosing
DHO_VENDOR := vanir

# Inherit device configuration
$(call inherit-product, device/hp/bowser/full_bowser.mk)

# Inherit some common Vanir stuf.
$(call inherit-product, vendor/vanir/products/common_tabs.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="hp/bowser/200a:4.4.2/4.4.2-17r25.1-11-11/17r25.1-11-11:user/release-keys" \
    PRIVATE_BUILD_DESC="bowser-user 4.4.2 4.4.2-17r25.1-11-11 17r25.1-11-11 release-keys"

PRODUCT_NAME := vanir_bowser
