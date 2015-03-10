#Squisher Choosing
DHO_VENDOR := vanir

KERNEL_SPAM := CM-AOSP 3.4.0-g8e41961

# Run these first or they will not stick
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-DEB

# Tablet Overlays with radios
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_radio

# GSM APNs and Simcard app

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

$(call inherit-product, device/asus/deb/full_deb.mk)

# Inherit common product files.
$(call inherit-product, vendor/vanir/products/common_tabs.mk)


# Setup device specific product configuration.
PRODUCT_NAME := vanir_deb
PRODUCT_BRAND := google
PRODUCT_DEVICE := deb
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=razor TARGET_DEVICE=deb BUILD_FINGERPRINT=google/razor/deb:5.1/LMY47D/937116:user/release-keys PRIVATE_BUILD_DESC="razor-user 5.1 LMY47D 937116 release-keys"
