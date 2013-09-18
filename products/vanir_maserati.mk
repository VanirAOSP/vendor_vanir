#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-MASERATI

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/540x960.zip:system/media/bootanimation.zip

# Vanir configuration
$(call inherit-product, vendor/vanir/products/common_phones.mk)
$(call inherit-product, vendor/vanir/products/cdma.mk)
# $(call inherit-product, vendor/vanir/products/beats.mk)

# Inherit AOSP device configuration for maserati.
$(call inherit-product, device/motorola/maserati/full_maserati.mk)

# Default values used by 99vanir. copied to /sdcard on first run, and presently it lives there forever... todo: make a runonce script that adds new default values to the copy on the sdcard as we add them or something
# TODO, UPDATE THIS FOR DROID 4
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/jf/etc/vanir.cfg:system/etc/vanir.cfg

#
# Setup device specific product configuration.
#
# Setup device specific product configuration.
PRODUCT_NAME := vanir_maserati
PRODUCT_BRAND := verizon
PRODUCT_DEVICE := maserati
PRODUCT_RELEASE_NAME := Droid4
PRODUCT_MODEL := XT894
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=maserati BUILD_FINGERPRINT=verizon/maserati/maserati:4.3/JLS36C/737497:user/release-keys PRIVATE_BUILD_DESC="maserati-user 4.3 JLS36C 737497 release-keys"

