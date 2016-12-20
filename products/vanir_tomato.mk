# VanirAOSP (to the power of Frey, to the hammer of Thor)

PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=vanir-tomato

# Boot Animation
PRODUCT_COPY_FILES += vendor/vanir/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

# Inherit common product files.
NO_DRM_BLOBS := true

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

$(call inherit-product, device/yu/tomato/full_tomato.mk)

# Naming Tidbits
PRODUCT_NAME := vanir_tomato
PRODUCT_DEVICE := tomato
BOARD_VENDOR := yu

PRODUCT_GMS_CLIENTID_BASE := android-micromax
TARGET_VENDOR_PRODUCT_NAME := YUREKA
TARGET_VENDOR_DEVICE_NAME := YUREKA
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=YUREKA PRODUCT_NAME=YUREKA
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=YU/YUREKA/YUREKA:5.1.1/LMY49J/YOG4PAS8A4:user/release-keys PRIVATE_BUILD_DESC="YUREKA-user 5.1.1 LMY49J YOG4PAS8A4 release-keys"
