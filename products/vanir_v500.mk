#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-v500

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/lge/v500/v500.mk)

# Tablet Overlays no radios
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_no_radio

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/common_tabs.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := v500
PRODUCT_NAME := vanir_v500
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-V5.1
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=awifi_open_eu BUILD_FINGERPRINT=lge/awifi_open_eu/awifi:5.1/LMY48M/V5.110a.13806295.1:user/release-keys PRIVATE_BUILD_DESC="awifi_open_eu-user 5.1 LMY48M V5.110a.13806295.1 release-keys"
