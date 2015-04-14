# Variable for zip installerscript spam about kernel
KERNEL_SPAM := WHY DOESNT THIS JUST WORK AMGGGG #not related to the kernel... but this build step didn't work anyways, so lulpwned.

VANIR_FAILSAFE := true
BONE_STOCK := true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-m4

$(call inherit-product, device/htc/m4/full_m4.mk)

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

# Inherit common product files.
NO_DRM_BLOBS := true

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Inherit device configuration - this is redundant, but cm's audio works, so ytf not
$(call inherit-product, device/htc/m4/device.mk)

#Low-Ram
MODERATE_LOW_RAM_DEVICE := true

# Device naming
PRODUCT_DEVICE := m4
PRODUCT_NAME := vanir_m4
PRODUCT_BRAND := htc
PRODUCT_MODEL := One Mini
PRODUCT_MANUFACTURER := HTC
