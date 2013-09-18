#Squisher Choosing
DHO_VENDOR := vanir

# Run these first or they will not stick
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-pollux

# Tablet Overlays with radios
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_radio

# GSM APNs and Simcard app
$(call inherit-product, vendor/vanir/products/gsm.mk)

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit common product files.
$(call inherit-product, vendor/vanir/products/common_tabs.mk)

# Inherit AOSP device configuration for grouper
$(call inherit-product, device/sony/pollux/full_pollux.mk)

# Default values used by 99vanir. copied to /sdcard on first run, and presently it lives there forever... todo: make a runonce script that adds new default values to the copy on the sdcard as we add them or something
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/etc/vanir.cfg:system/etc/vanir.cfg

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := vanir_pollux
PRODUCT_DEVICE := pollux
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := SGP321

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGP321 BUILD_FINGERPRINT=Sony/SGP321_1275-5841/SGP321:4.1.2/10.1.1.A.1.253/Avt3rw:user/release-keys PRIVATE_BUILD_DESC="SGP321-user 4.1.2 10.1.1.A.1.253 Avt3rw test-keys"

