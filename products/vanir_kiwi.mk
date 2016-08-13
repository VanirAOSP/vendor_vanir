#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += drm.service.enabled=true ro.goo.rom=vanir-kiwi

# Boot Animation
PRODUCT_COPY_FILES += vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/huawei/kiwi/full_kiwi.mk)

# Inherit common files.
$(call inherit-product, vendor/vanir/products/common_phones.mk)

PRODUCT_DEVICE := kiwi
PRODUCT_NAME := full_kiwi
PRODUCT_BRAND := HONOR
PRODUCT_MODEL := KIW-L24
PRODUCT_MANUFACTURER := HUAWEI
TARGET_CONTINUOUS_SPLASH_ENABLED := true
PRODUCT_GMS_CLIENTID_BASE := android-huawei
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=A0001 PRODUCT_NAME=bacon
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=oneplus/bacon/A0001:6.0.1/MHC19Q/ZNH2KAS1KN:user/release-keys PRIVATE_BUILD_DESC="bacon-user 6.0.1 MHC19Q ZNH2KAS1KN release-keys"
