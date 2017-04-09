# you might want to wait to try this unless you have a giant pair of low-hanging huevos
PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=vanir-ls995

# Obselete tagging 
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-ls990

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit Flex stuff
$(call inherit-product, device/lge/ls995/ls995.mk)

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

PRODUCT_NAME := vanir_ls995
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-LS995
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=lge/z_tmo_us/zee:4.4.2/KOT49I.D95920h/D95920h.1398665038:user/release-keys \
PRIVATE_BUILD_DESC="z_tmo_us-user 4.4.2 KOT49I.D95920h D95920h.1398665038 release-keys"
