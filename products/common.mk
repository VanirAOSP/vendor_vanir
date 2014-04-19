PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/common

#optional theme files
PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/theme

# DSPManager and bravia
$(call inherit-product, vendor/vanir/products/media_sexificators.mk)
$(call inherit-product, vendor/vanir/config/nfc_enhanced.mk)

# Add some tones (if this grows to more than like... 5 ringtones and 5 notifications, old ones will be dropped)
$(call inherit-product, vendor/vanir/proprietary/ringtones/VanirRingtones.mk)

# Build packages included in manifest
PRODUCT_PACKAGES += \
    busybox \
    Email \
    Launcher3 \
    PerformanceControl \
    OmniSwitch \
    VanirUpdater \
    VoicePlus

Vanir_Version=4.4.2
Vanir_BUILD=$(Vanir_Version)

ifeq ($(RELEASE),)
ifneq ($(FORCE_BUILD_DATE),)
BUILD_DATE:=.$(FORCE_BUILD_DATE)
else
BUILD_DATE:=$(shell date +".%m%d%y")
endif
Vanir_BUILD=$(Vanir_Version)$(BUILD_DATE)
endif

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
    ro.rommanager.developerid=vanir \
    wifi.supplicant_scan_interval=300 \
    persist.sys.root_access=3 \
    ro.build.selinux=1

# nomnomnom
PRODUCT_PROPERTY_OVERRIDES += persist.sys.dun.override=0

ifeq ($(VANIR_FAILSAFE),)
# Build.Prop Tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.checkjni=false \
    dalvik.vm.dexopt-flags=m=y \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.stack-trace-file=/data/anr/traces.txt \
    dalvik.vm.verify-bytecode=false \
    mot.proximity.delay=20 \
    net.bt.name=Android \
    ro.ril.disable.power.collapse=0 \
    ro.vold.umsdirtyratio=20 \
    pm.sleep_mode=0 \
    ro.config.nocheckin=1 \
    ro.config.hwfeature_wakeupkey=0 \
    ro.ext4fs=1 \
    ro.goo.developerid=vanir \
    ro.kernel.android.checkjni=0 \
    ro.kernel.checkjni=0 \
    ro.lge.proximity.delay=20 \
    ro.max.fling_velocity=15000 \
    ro.media.enc.hprof.vid.bps=8000000 \
    ro.media.enc.hprof.vid.fps=65 \
    ro.media.dec.jpeg.memcap=8000000 \
    ro.media.enc.jpeg.quality=100 \
    ro.min.fling_velocity=10000 \
    video.accelerate.hw=1
endif

# Disable GC freed lines
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.debug.alloc=0

# Questionable stuff -- just trusting stock values on these
#    movfilter=40 \
#    per_sec=300 \
#    windowsmgr.max_events_per_sec=280 \
#    ro.mot.eri.losalert.delay=600 \
#    debug.composition.type=gpu \
#    debug.performance.tuning=1 \
#    debug.sf.hw=1
#    ro.VISIBLE_APP_MEM=8192 \
#    ro.HOME_APP_ADJ=1 \
#    ro.HOME_APP_MEM=8192 \
#    ro.FOREGROUND_APP_MEM=8192 \
#    dalvik.vm.lockprof.threshold=850 \

### These will prevent any FC popups from showing... ever. (lol)
#    profiler.force_disable_err_rpt=1 \
#    profiler.force_disable_ulog=1 \

# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=KOT49L BUILD_ID=KOT49L BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_EST_DATE=$(shell date +"%s")

PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/xbin/sysrw:system/xbin/sysrw \
    vendor/vanir/proprietary/common/xbin/sysro:system/xbin/sysro \
    vendor/vanir/proprietary/common/xbin/vanirinteractivegovernorgovernor:system/xbin/vanirinteractivegovernorgovernor \
    vendor/vanir/proprietary/common/xbin/vanirflash:system/xbin/vanirflash \
    vendor/vanir/proprietary/common/init.vanir.rc:root/init.vanir.rc \
    vendor/vanir/proprietary/common/bin/sysinit:system/bin/sysinit \
    vendor/vanir/proprietary/common/etc/init.d/00firsties:system/etc/init.d/00firsties \
    vendor/vanir/proprietary/common/xbin/purgethumbnails:system/xbin/purgethumbnails

PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/lib/liblightcycle.so:system/lib/liblightcycle.so \
    vendor/vanir/proprietary/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so \
    vendor/vanir/proprietary/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinime.so

ifeq ($(VANIR_FAILSAFE),)
# Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/bin/fix_permissions:system/bin/fix_permissions \
    vendor/vanir/proprietary/common/xbin/hunter:system/xbin/hunter \
    vendor/vanir/proprietary/common/xbin/testinitd:system/xbin/testinitd \
    vendor/vanir/proprietary/common/xbin/vanircheckcpu:system/xbin/vanircheckcpu \
    vendor/vanir/proprietary/common/xbin/vanirnice:system/xbin/vanirnice

# Misc Files
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/etc/resolv.conf:system/etc/resolv.conf

# proprietary guts
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/vanir/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# entropy mumbo jump
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/xbin/CB_RunHaveged:system/xbin/CB_RunHaveged \
    vendor/vanir/proprietary/common/xbin/haveged:system/xbin/haveged \
    vendor/vanir/proprietary/common/xbin/vanirentropy:system/xbin/vanirentropy \
    vendor/vanir/proprietary/common/bin/cronlogger:system/bin/cronlogger

# init.d Tweaks
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/vanir/proprietary/common/etc/init.d/09cron:system/etc/init.d/09cron \
    vendor/vanir/proprietary/common/etc/init.d/98SONIC_SHOCK:system/etc/init.d/98SONIC_SHOCK \
    vendor/vanir/proprietary/common/etc/init.d/99vanir:system/etc/init.d/99vanir \
    vendor/vanir/proprietary/common/etc/cron/cron.minutely/00nicetweaks:/system/etc/cron/cron.minutely/00nicetweaks \
    vendor/vanir/proprietary/common/etc/cron/cron.daily/00sqlitespeed:/system/etc/cron/cron.daily/00sqlitespeed

# system and persistent /data boot.d Tweaks - triggered when ro.boot_complete is set to 1
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/bin/userinit:system/bin/userinit \
    vendor/vanir/proprietary/common/etc/boot.d/00vanirnice:system/etc/boot.d/00vanirnice

# Backup Tools
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/vanir/proprietary/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/vanir/proprietary/common/bin/50-vanir.sh:system/addon.d/50-vanir.sh \
    vendor/vanir/proprietary/common/bin/blacklist:system/addon.d/blacklist \
    vendor/vanir/proprietary/common/bin/whitelist:system/addon.d/whitelist
endif

PRODUCT_PACKAGE_OVERLAYS += \
    vendor/vanir/overlay/dictionaries

#Define thirdparty for Koush's SU
SUPERUSER_EMBEDDED := true
SUPERUSER_PACKAGE_PREFIX := com.android.settings.vanir.superuser

# Required CM packages
PRODUCT_PACKAGES += \
    Camera \
    Development \
    LatinIME \
    Superuser \
    su \
    BluetoothExt

# CM Hardware Abstraction Framework
PRODUCT_PACKAGES += \
    org.cyanogenmod.hardware \
    org.cyanogenmod.hardware.xml

# Optional CM packages
PRODUCT_PACKAGES += \
    Basic \
    SoundRecorder \
    libemoji

# Extra tools in CM
PRODUCT_PACKAGES += \
    libsepol \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    bash \
    vim \
    nano \
    htop \
    powertop \
    lsof \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    ntfsfix \
    ntfs-3g \
    gdbserver \
    micro_bench \
    oprofiled \
    procmem \
    procrank \
    sqlite3 \
    strace

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

# T-Mobile theme engine
PRODUCT_PACKAGES += \
    ThemeManager \
    ThemeChooser \
    com.tmobile.themes \
    Vanir_Inverted

## STREAMING DMESG?
PRODUCT_PACKAGES += \
    klogripper

## FOR HOTFIXING KERNELS MAINTAINED BY BUNGHOLES
PRODUCT_PACKAGES += \
    utility_mkbootimg \
    utility_unpackbootimg
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/etc/init.d/0000kernelassimilator:system/etc/init.d/0000kernelassimilator \
    vendor/vanir/proprietary/common/etc/kernelassimilator.d/00bootclasspath:system/etc/kernelassimilator.d/00bootclasspath

PRODUCT_COPY_FILES += \
    vendor/vanir/config/permissions/com.tmobile.software.themes.xml:system/etc/permissions/com.tmobile.software.themes.xml

-include vendor/cyngn/product.mk

$(call inherit-product-if-exists, vendor/vanir-private/Private.mk)
