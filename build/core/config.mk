# Copyright (C) 2015 The CyanogenMod Project
#           (C) 2017 The LineageOS Project
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

LINEAGE_SRC_API_DIR := $(TOPDIR)prebuilts/lineage-sdk/api
INTERNAL_LINEAGE_PLATFORM_API_FILE := $(TARGET_OUT_COMMON_INTERMEDIATES)/PACKAGING/lineage_public_api.txt
INTERNAL_LINEAGE_PLATFORM_REMOVED_API_FILE := $(TARGET_OUT_COMMON_INTERMEDIATES)/PACKAGING/lineage_removed.txt
FRAMEWORK_LINEAGE_PLATFORM_API_FILE := $(TOPDIR)lineage-sdk/api/lineage_current.txt
FRAMEWORK_LINEAGE_PLATFORM_REMOVED_API_FILE := $(TOPDIR)lineage-sdk/api/lineage_removed.txt
FRAMEWORK_LINEAGE_API_NEEDS_UPDATE_TEXT := $(TOPDIR)vendor/vanir/build/core/apicheck_msg_current.txt

LOCAL_PATH := $(TOPDIR)$(shell dirname $(lastword $(MAKEFILE_LIST)))
BUILD_MAVEN_PREBUILT := $(LOCAL_PATH)/maven_artifact.mk
PUBLISH_MAVEN_PREBUILT := $(LOCAL_PATH)/maven_artifact_publish.mk

MANGLE_BOOTANIMATION_RESOLUTION :=
ifeq ($(TARGET_SCREEN_WIDTH),)
MANGLE_BOOTANIMATION_RESOLUTION := true
else
ifeq ($(TARGET_SCREEN_HEIGHT),)
MANGLE_BOOTANIMATION_RESOLUTION := true
endif
endif

BOOT_ANIMATION_LINE := $(foreach filecopy, $(PRODUCT_COPY_FILES), $(shell echo $(filecopy) | grep -o '.*bootanimation.zip*' || true))
ifneq ($(MANGLE_BOOTANIMATION_RESOLUTION),)
ifneq ($(BOOT_ANIMATION_LINE),)
BOOT_ANIMATION_RESOLUTION := $(shell echo $(BOOT_ANIMATION_LINE) |  sed 's/\.zip:.*//;s/.*\///g') #produces WWWWxHHHH
TARGET_SCREEN_WIDTH := $(shell echo $(BOOT_ANIMATION_RESOLUTION) | sed 's/x.*//g')
TARGET_SCREEN_HEIGHT := $(shell echo $(BOOT_ANIMATION_RESOLUTION) | sed 's/.*x//g')
else
ifneq ($(VANIR_BUILD),)
$(error Could not determine boot animation size based on PRODUCT_COPY_FILES. Set TARGET_SCREEN_WIDTH and TARGET_SCREEN_HEIGHT in vendor/$(BOOT_ANIMATION_VENDOR)/products/$(TARGET_PRODUCT).mk)
else
$(warning Could not determine boot animation size, but you're not building a vanir_* target, so GLHF, butthead)
endif
endif
endif
ifneq ($(BOOT_ANIMATION_LINE),)
PRODUCT_COPY_FILES := $(filter-out $(BOOT_ANIMATION_LINE),$(PRODUCT_COPY_FILES))
endif

BUILD_MAVEN_PREBUILT := $(TOP)/vendor/vanir/build/core/maven_artifact.mk
PUBLISH_MAVEN_PREBUILT := $(TOP)/vendor/vanir/build/core/maven_artifact_publish.mk

BUILD_HTTP_PREBUILT := $(TOP)/vendor/vanir/build/core/http_prebuilt.mk
