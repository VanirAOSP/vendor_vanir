# Variable for zip installerscript spam about kernel
KERNEL_SPAM := WHY DOESNT THIS JUST WORK AMGGGG #not related to the kernel... but this build step didn't work anyways, so lulpwned.

# Copy toro specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit common product files.
NO_DRM_BLOBS := true
$(call inherit-product, vendor/vanir/products/beats.mk)
$(call inherit-product, vendor/vanir/products/gsm.mk)
$(call inherit-product, vendor/vanir/config/nfc_enhanced.mk)

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Default values used by 99vanir. copied to /sdcard on first run, and presently it lives there forever... todo: make a runonce script that adds new default values to the copy on the sdcard as we add them or something
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/jf/etc/vanir.cfg:system/etc/vanir.cfg
    
# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := vanir_m7ul
PRODUCT_DEVICE := m7ul
PRODUCT_BRAND := htc
PRODUCT_MANUFACTURER := htc
PRODUCT_MODEL := One
    
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m7 BUILD_ID=JWR66V.H10 BUILD_FINGERPRINT="htc/m7_google/m7:4.3/JWR66V.H10/230993:user/release-keys" PRIVATE_BUILD_DESC="3.06.1700.10 CL230993 release-keys"

