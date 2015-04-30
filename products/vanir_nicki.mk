# Copyright (C) 2014 The VanirAOSP Project
# Copyright (C) 2014 nolinuxnoparty <nolinuxnoparty@vanir.us>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# Inherit device configuration
$(call inherit-product, device/sony/nicki/nicki.mk)

# Vanir configuration
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/480x854.zip:system/media/bootanimation.zip

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := nicki
PRODUCT_NAME := vanir_nicki
PRODUCT_BRAND := Sony
PRODUCT_MODEL := C1905
PRODUCT_MANUFACTURER := Sony
PRODUCT_CHARACTERISTICS := phone
