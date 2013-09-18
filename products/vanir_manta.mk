#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES := \
    drm.service.enabled=true

# Inherit common product files.
$(call inherit-product, vendor/vanir/products/common_tabs.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)

PRODUCT_PACKAGES += \
    LiveWallpapersPicker

# Boot Animation
PRODUCT_COPY_FILES += \
   vendor/vanir/proprietary/boot_animations/1280x800.zip:system/media/bootanimation.zip

# Tablet Overlays no radios
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_no_radio

# Inherit AOSP device configuration for Manta.
$(call inherit-product, device/samsung/manta/full_manta.mk)

# More Language support for International LatinIME
PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/dictionaries

# Default values used by 99vanir. copied to /sdcard on first run, and presently it lives there forever... todo: make a runonce script that adds new default values to the copy on the sdcard as we add them or something
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/etc/vanir.cfg:system/etc/vanir.cfg

PRODUCT_NAME := vanir_manta
PRODUCT_DEVICE := manta
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 10
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mantaray BUILD_FINGERPRINT=google/mantaray/manta:4.3/JLS36C/737497:user/release-keys PRIVATE_BUILD_DESC="mantaray-user 4.3 JLS36C 737497 release-keys"
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=Vanir-MANTA
