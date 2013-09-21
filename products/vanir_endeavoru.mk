#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-endeavoru
    
# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip
    
# Inherit common product files.
NO_DRM_BLOBS := true
    
# Inherit common product files.
$(call inherit-product, vendor/vanir/products/gsm.mk)

# Inherit AOSP device configuration for HTC One X.
$(call inherit-product, device/htc/endeavoru/full_endeavoru.mk)

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Default values used by 99vanir. copied to /sdcard on first run, and presently it lives there forever... todo: make a runonce script that adds new default values to the copy on the sdcard as we add them or something
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/jf/etc/vanir.cfg:system/etc/vanir.cfg

# Discard inherited values and use our own instead.
PRODUCT_NAME := vanir_endeavoru
PRODUCT_DEVICE := endeavoru
PRODUCT_BRAND := Android
PRODUCT_MODEL := VanirAOSP on EndeavorU

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=endeavoru TARGET_DEVICE=endeavoru BUILD_FINGERPRINT="htc_europe/endeavoru/endeavoru:4.1.1/JRO03C/128187.31:user/release-keys" PRIVATE_BUILD_DESC="3.14.401.31 CL128187 release-keys"