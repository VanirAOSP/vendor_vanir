#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=vanir-jfltespr

# Variable for zip installerscript spam about kernel
KERNEL_SPAM := WHY DOESNT THIS JUST WORK AMGGGG #not related to the kernel... but this build step didn't work anyways, so lulpwned.

# Boot Animation
PRODUCT_COPY_FILES += vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit common product files.
NO_DRM_BLOBS := true
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Inherit device repo
$(call inherit-product, device/samsung/jfltespr/full_jfltespr.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jfltespr TARGET_DEVICE=jfltespr BUILD_FINGERPRINT="samsung/jfltespr/jfltespr:5.0.1/LRX22C/L720VPUGOK3:user/release-keys" PRIVATE_BUILD_DESC="jfltespr-user 5.0.1 LRX22C L720VPUGOK3 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-samsung

#Tagging
PRODUCT_NAME := vanir_jfltespr
