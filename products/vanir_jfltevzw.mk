#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=vanir-jfltevzw

# Boot Animation
PRODUCT_COPY_FILES += vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit common product files.
NO_DRM_BLOBS := true
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Inherit device repo
$(call inherit-product, device/samsung/jfltevzw/full_jfltevzw.mk)

# Inherit common Verizon Wireless Perms and Lib
$(call inherit-product, vendor/vanir/products/vzw.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jfltevzw TARGET_DEVICE=jfltevzw BUILD_FINGERPRINT="Verizon/jfltevzw/jfltevzw:5.0.1/LRX22C/I545VRUGOC1:user/release-keys" PRIVATE_BUILD_DESC="jfltevzw-user 5.0.1 LRX22C I545VRUGOC1 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-verizon

#Tagging
PRODUCT_NAME := vanir_jfltevzw
