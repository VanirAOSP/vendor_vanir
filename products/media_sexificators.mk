PRODUCT_PACKAGES += \
    DSPManager \
    libcyanogen-dsp

ifneq ($(NO_DRM_BLOBS),true)
# Blobs necessary for drm
PRODUCT_COPY_FILES += \
   vendor/vanir/proprietary/common/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
   vendor/vanir/proprietary/common/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
   vendor/vanir/proprietary/common/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
   vendor/vanir/proprietary/common/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so
endif

# This SHOULD be build by DSPManager..... im tired so a cheap fix
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/vendor/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf

# Bravia 3 engine, credit C0deF0x
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/bravia/etc/be_movie:system/etc/be_movie \
    vendor/vanir/proprietary/bravia/etc/be_photo:system/etc/be_photo \
    vendor/vanir/proprietary/bravia/etc/permissions/com.sonyericsson.android.SwIqiBmp.xml:system/etc/permissions/com.sonyericsson.android.SwIqiBmp.xml \
    vendor/vanir/proprietary/bravia/framework/com.sonyericsson.android.SwIqiBmp.jar:system/framework/com.sonyericsson.android.SwIqiBmp.jar

# Build.Prop Tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    persist.service.swiqi3.enable=1 \
    ro.service.swiqi3.supported=true \
    persist.service.swiqi.enable=1 \
    ro.service.swiqi.supported=true
