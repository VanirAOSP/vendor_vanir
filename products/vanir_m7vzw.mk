#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-m7vzw

# Inherit AOSP device configuration for HTC One.
$(call inherit-product, device/htc/m7vzw/full_m7vzw.mk)

$(call inherit-product, vendor/vanir/products/multi_m7-common.mk)


# Inherit common Verizon Wireless Perms and Lib
$(call inherit-product, vendor/vanir/products/vzw.mk)

# Setup device specific product configuration.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m7wlv BUILD_ID=LMY47D BUILD_FINGERPRINT="VERIZON/HTCOneVZW/m7wlv:5.0/LMY47D/304035.1:user/release-k" PRIVATE_BUILD_DESC="3.11.605.1 CL304035 release-keys"

PRODUCT_NAME := vanir_m7vzw
PRODUCT_DEVICE := m7vzw
