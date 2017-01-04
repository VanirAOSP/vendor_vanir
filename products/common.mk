DEVICE_PACKAGE_OVERLAYS += vendor/vanir/overlay/common

PRODUCT_SIZE := full

#optional theme files
DEVICE_PACKAGE_OVERLAYS += vendor/vanir/overlay/theme

# DSPManager and NFC
$(call inherit-product, vendor/vanir/products/media_sexificators.mk)
$(call inherit-product, vendor/vanir/config/cmsdk_common.mk)

# Add some tones (if this grows to more than like... 5 ringtones and 5 notifications, old ones will be dropped)
$(call inherit-product, vendor/vanir/proprietary/ringtones/VanirRingtones.mk)

# Backup Services whitelist
PRODUCT_COPY_FILES += \
    vendor/vanir/config/permissions/backup.xml:system/etc/sysconfig/backup.xml

# Include explicitly to workaround GMS issue
PRODUCT_PACKAGES += \
	libprotobuf-cpp-full \
    librsjni

# Build packages included in manifest
PRODUCT_PACKAGES += \
    IndecentXposure \
    Exchange2 \
    LockClock \
    Terminal \
    Email \
    Trebuchet \
    AudioFX \
    LiveWallpapersPicker \
    VanirUpdater \
    Profiles \
    CMSettingsProvider \
    ExactCalculator \
    LiveLockScreenService \
    Screencast \
    WeatherProvider \
    WallpaperPicker

# Weather
PRODUCT_PACKAGES += \
    OpenWeatherMapProvider

# QuickBoot (included automagically for non-oppo qcom devices)
PRODUCT_PACKAGES += \
    QuickBoot \
    init.vanir.quickboot.rc

VANIR_VERSION:=7.0
Vanir_BUILD:=$(VANIR_VERSION)
CM_VERSION:=$(VANIR_VERSION)
LINEAGE_VERSION:=$(VANIR_VERSION)

ifeq ($(RELEASE),)
ifneq ($(FORCE_BUILD_DATE),)
BUILD_DATE:=.$(FORCE_BUILD_DATE)
else
BUILD_DATE:=$(shell date +".%m%d%y")
endif
Vanir_BUILD:=$(VANIR_VERSION)$(BUILD_DATE)
endif

-include $(WORKSPACE)/build_env/image-auto-bits.mk


ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

# Build Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.mode=OPTIONAL \
    ro.setupwizard.enterprise_mode=1 \
    ro.config.ringtone=Hydra.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Alarm_Beep_03.ogg \
    ro.modversion=$(Vanir_BUILD) \
    ro.goo.version=$(Vanir_BUILD) \
    ro.goo.developerid=vanir \
    wifi.supplicant_scan_interval=300 \
    ro.build.selinux=1

ifneq ($(TARGET_BUILD_VARIANT),user)
# Thank you, please drive thru!
PRODUCT_PROPERTY_OVERRIDES += persist.sys.dun.override=0
endif

ifneq ($(TARGET_BUILD_VARIANT),eng)
# Enable ADB authentication
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=1
endif

PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/xbin/sysrw:system/xbin/sysrw \
    vendor/vanir/proprietary/common/xbin/sysro:system/xbin/sysro \
    vendor/vanir/proprietary/common/xbin/vanirflash:system/xbin/vanirflash \
    vendor/vanir/proprietary/common/init.vanir.rc:root/init.vanir.rc \
    vendor/vanir/proprietary/common/bin/otasigcheck.sh:system/bin/otasigcheck.sh \
    vendor/vanir/proprietary/common/bin/sysinit:system/bin/sysinit \
    vendor/vanir/proprietary/common/bin/run-parts:system/bin/run-parts \
    vendor/vanir/proprietary/common/etc/init.d/00firsties:system/etc/init.d/00firsties

ifeq ($(VANIR_FAILSAFE),)
# Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/xbin/hunter:system/xbin/hunter \
    vendor/vanir/proprietary/common/xbin/testinitd:system/xbin/testinitd \
    vendor/vanir/proprietary/common/xbin/vanircheckcpu:system/xbin/vanircheckcpu \
    vendor/vanir/proprietary/common/xbin/vanirnice:system/xbin/vanirnice

# Misc Files
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/etc/resolv.conf:system/etc/resolv.conf

# copy over added mimetype supported in libcore.net.MimeUtils
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/lib/content-types.properties:system/lib/content-types.properties

# init.d Tweaks
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/vanir/proprietary/common/etc/init.d/98SONIC_SHOCK:system/etc/init.d/98SONIC_SHOCK \
    vendor/vanir/proprietary/common/etc/init.d/90userinit:system/etc/init.d/90userinit

# system and persistent /data boot.d Tweaks - triggered when ro.boot_complete is set to 1
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/bin/afterboot:system/bin/afterboot \
    vendor/vanir/proprietary/common/etc/boot.d/00vanirnice:system/etc/boot.d/00vanirnice

# Backup Tools
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/bin/automagic.sh:install/bin/automagic.sh \
    vendor/vanir/proprietary/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/vanir/proprietary/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/vanir/proprietary/common/bin/updatertext.sh:install/bin/updatertext.sh \
    vendor/vanir/proprietary/common/bin/50-vanir.sh:system/addon.d/50-vanir.sh \
    vendor/vanir/proprietary/common/bin/71-calendar.sh:system/addon.d/71-calendar.sh \
    vendor/vanir/proprietary/common/bin/blacklist:system/addon.d/blacklist \
    vendor/vanir/proprietary/common/bin/whitelist:system/addon.d/whitelist
endif


# Required CM packages
PRODUCT_PACKAGES += \
    BluetoothExt \
    Camera \
    CMAudioService \
    CMParts \
    Development \
    su \
    HexoLibre \
    WeatherManagerService

# Optional CM packages
PRODUCT_PACKAGES += \
    SoundRecorder \
    ScreenCast \
    libemoji

## Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libffmpeg_extractor \
    libffmpeg_omx \
    media_codecs_ffmpeg.xml

PRODUCT_PROPERTY_OVERRIDES += \
    media.sf.omx-plugin=libffmpeg_omx.so \
    media.sf.extractor-plugin=libffmpeg_extractor.so

# Copy over added mimetype supported in libcore.net.MimeUtils
PRODUCT_COPY_FILES += \
    vendor/vanir/prebuilt/common/lib/content-types.properties:system/lib/content-types.properties

# Extra tools in CM
PRODUCT_PACKAGES += \
    libsepol \
    mke2fs \
    tune2fs \
    mkfs.ntfs \
    fsck.ntfs \
    mount.ntfs \
    bash \
    vim \
    wget \
    unzip \
    7z \
    lib7z \
    bzip2 \
    zip \
    unrar \
    nano \
    htop \
    gdbserver \
    micro_bench \
    oprofiled \
    procmem \
    procrank \
    sqlite3 \
    strace \
    curl \
    pigz

ifneq ($(WITH_CM_CHARGER),false)
PRODUCT_PACKAGES += \
    charger_res_images \
    cm_charger_res_images \
    font_log.png \
    libhealthd.cm
endif

WITH_EXFAT ?= true
ifeq ($(WITH_EXFAT),true)
TARGET_USES_EXFAT := true
PRODUCT_PACKAGES += \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat
endif

ifneq ($(TARGET_ARCH),arm64)
PRODUCT_PACKAGES += \
    powertop
endif

# Keyboard Files
    PRODUCT_COPY_FILES += vendor/vanir/proprietary/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinime.so
    PRODUCT_PACKAGES += Latinimegoogle

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# rsync
PRODUCT_PACKAGES += \
    rsync

# Storage manager
PRODUCT_PROPERTY_OVERRIDES += \
    ro.storage_manager.enabled=true

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# Build Substratium packages
PRODUCT_PACKAGES += \
    aapt \
    aopt \
    masquerade

# Theme engine
#PRODUCT_PACKAGES += \
#    aapt \
#    ThemeChooser \
#    ThemesProvider

## STREAMING DMESG?
PRODUCT_PACKAGES += \
    klogripper

## FOR HOTFIXING KERNELS MAINTAINED BY BUNGHOLES
PRODUCT_PACKAGES += \
    utility_mkbootimg \
    utility_unpackbootimg

-include vendor/cyngn/product.mk

ifeq ($(OTA_PACKAGE_SIGNING_KEY),)
    PRODUCT_EXTRA_RECOVERY_KEYS += \
        vendor/vanir/build/target/product/security/cm \
        vendor/vanir/build/target/product/security/cm-devkey
endif

PRODUCT_PACKAGES += \
	bootanimation.zip

$(call inherit-product-if-exists, vendor/vanir-private/Private.mk)
$(call inherit-product-if-exists, vendor/extra/product.mk)
