#Squisher Choosing
DHO_VENDOR := vanir

# Variable for zip installerscript spam about kernel
KERNEL_SPAM := CM Kernel

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-ovation

# Vanir Overlays
# Vanir config should be updated
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1280x1920.zip:system/media/bootanimation.zip \
    vendor/vanir/proprietary/common/etc/vanir.cfg:system/etc/vanir.cfg \
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_no_radio

# Inherit common Vanir stuff
$(call inherit-product, vendor/vanir/products/common_tabs.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)

# Inherit AOSP device configuration for GS3 SPR.
$(call inherit-product, device/samsung/ovation/full_ovation.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := vanir_ovation
PRODUCT_DEVICE := ovation
PRODUCT_BRAND := Android
PRODUCT_MANUFACTURER := BarnesAndNoble
PRODUCT_MODEL := NookHD+

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=ovation TARGET_DEVICE=ovation BUILD_FINGERPRINT="bn/ovation/ovation:4.3/JLS36C/L710VPBMD4:user/release-keys" PRIVATE_BUILD_DESC="ovation-user 4.3 JLS36C L710VPBMD4 release-keys"