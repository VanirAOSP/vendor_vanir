#Squisher Choosing
DHO_VENDOR := vanir

KERNEL_SPAM := Faux Kernel v013u IN THE HIZNOUSE

PRODUCT_PACKAGES += \
    LiveWallpapersPicker

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

# Default values used by 99vanir. copied to /sdcard on first run, and presently it lives there forever... todo: make a runonce script that adds new default values to the copy on the sdcard as we add them or something
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/etc/vanir.cfg:system/etc/vanir.cfg

# Setup device specific product configuration.
PRODUCT_NAME := vanir_tilapia
PRODUCT_BRAND := google
PRODUCT_DEVICE := tilapia
PRODUCT_MODEL := Nexus 7 GSM
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasig BUILD_FINGERPRINT="google/nakasig/tilapia:4.3/JLS36C/737497:user/release-keys" PRIVATE_BUILD_DESC="nakasig-user 4.3 JLS36C 737497 release-keys"
