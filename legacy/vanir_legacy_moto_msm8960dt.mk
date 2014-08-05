#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-moto_msm8960dt

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip
# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)

$(call inherit-product, device/motorola/moto_msm8960dt/full_moto_msm8960dt.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=moto_msm8960dt \
    TARGET_DEVICE=moto_msm8960dt

PRODUCT_NAME := vanir_legacy_moto_msm8960dt
PRODUCT_DEVICE := moto_msm8960dt
