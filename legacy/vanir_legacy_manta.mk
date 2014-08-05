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

PRODUCT_NAME := vanir_legacy_manta
PRODUCT_DEVICE := manta
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 10
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mantaray BUILD_FINGERPRINT=google/mantaray/manta:4.4.4/KTU84Q/937116:user/release-keys PRIVATE_BUILD_DESC="mantaray-user 4.4.4 KTU84Q 937116 release-keys"
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=Vanir-MANTA
