# Release name
PRODUCT_RELEASE_NAME := lettuce

PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip
#Squisher Choosing
DHO_VENDOR := vanir

$(call inherit-product, device/yu/lettuce/full_lettuce.mk)

# Inherit some common  stuff.
$(call inherit-product, vendor/vanir/products/common_phones.mk) 

PRODUCT_NAME := vanir_lettuce 
BOARD_VENDOR := yu 
PRODUCT_DEVICE := lettuce 

PRODUCT_GMS_CLIENTID_BASE := android-micromax

TARGET_VENDOR_PRODUCT_NAME := YUPHORIA 
TARGET_VENDOR_DEVICE_NAME := YUPHORIA
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=YUPHORIA PRODUCT_NAME=YUPHORIA
