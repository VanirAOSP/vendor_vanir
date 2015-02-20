#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-jfltetmo

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit device repo
$(call inherit-product, device/samsung/jfltetmo/full_jfltetmo.mk)

# Inherit common product files.
NO_DRM_BLOBS := true
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Unified device flag for Verizon permissions
VZW_UNIFIED := true

#Tagging
PRODUCT_NAME := vanir_jfltetmo
