# CDMA APN list
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/cdma/etc/apns-conf.xml:system/etc/apns-conf.xml

PRODUCT_PACKAGE_OVERLAYS += \
    vendor/vanir/overlay/cdma_phone

#... and then make the AOSP device configuration for Verizon Phones get on its knees and sing the national anthem into our "microphones"
-PRODUCT_LOCALES := en_US 