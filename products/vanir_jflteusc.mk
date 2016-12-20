#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=vanir-jflteusc

# Variable for zip installerscript spam about kernel
KERNEL_SPAM := WHY DOESNT THIS JUST WORK AMGGGG #not related to the kernel... but this build step didn't work anyways, so lulpwned.

# Boot Animation
PRODUCT_COPY_FILES += vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit common product files.
NO_DRM_BLOBS := true
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Inherit device repo
$(call inherit-product, device/samsung/jflteusc/full_jflteusc.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jflteusc TARGET_DEVICE=jflteusc BUILD_FINGERPRINT="samsung/jflteusc/jflteusc:4.4.2/KOT49H/R970TYUFNK1:user/release-keys" PRIVATE_BUILD_DESC="jflteusc-user 4.4.2 KOT49H R970TYUFNK1 release-keys"

#Tagging
PRODUCT_NAME := vanir_jflteusc
