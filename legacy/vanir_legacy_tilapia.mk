#Squisher Choosing
DHO_VENDOR := vanir

KERNEL_SPAM := Faux Kernel v013u IN THE HIZNOUSE

PRODUCT_PACKAGES += \
    LiveWallpapersPicker \
    Mira4U

# Run these first or they will not stick
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-TILAPIA

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/800x1280.zip:system/media/bootanimation.zip

# Tablet Overlays with radios
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_radio

# Inherit common product files.
$(call inherit-product, vendor/vanir/products/common_tabs.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)

# GSM APNs and Simcard app
$(call inherit-product, vendor/vanir/products/gsm.mk)

# Inherit AOSP device configuration for grouper
$(call inherit-product, device/asus/tilapia/full_tilapia.mk)

# Setup device specific product configuration.
PRODUCT_NAME := vanir_legacy_tilapia
PRODUCT_BRAND := google
PRODUCT_DEVICE := tilapia
PRODUCT_MODEL := Nexus 7 GSM
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasig BUILD_FINGERPRINT="google/nakasig/tilapia:4.4.4/KTU84Q/937116:user/release-keys" PRIVATE_BUILD_DESC="nakasig-user 4.4.4 KTU84Q 937116 release-keys"
