#Squisher Choosing
DHO_VENDOR := vanir

KERNEL_SPAM := Faux Kernel v013u IN THE H1ZNOUSE

PRODUCT_PACKAGES += \
    Camera \
    LiveWallpapersPicker \
    Mira4U

# Run these first or they will not stick
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-GROUPER

# Tablet Overlays no radios
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_no_radio

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/800x1280.zip:system/media/bootanimation.zip

# Inherit AOSP device configuration for grouper
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Inherit common product files.
$(call inherit-product, vendor/vanir/products/common_tabs.mk)

# Setup device specific product configuration.
PRODUCT_NAME := vanir_grouper
PRODUCT_BRAND := google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasi BUILD_FINGERPRINT="google/nakasi/grouper:5.1/LMY47D/937116:user/release-keys" PRIVATE_BUILD_DESC="nakasi-user 5.1 LMY47D 937116 release-keys"
