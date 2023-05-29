#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from venus device
$(call inherit-product, device/xiaomi/venus/device.mk)

# Inherit some common Alphadroid stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

TARGET_SUPPORTS_QUICK_TAP := true
TARGET_HAS_UDFPS := true
TARGET_ENABLE_BLUR := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# Gapps Flags
WITH_GAPPS := 2
TARGET_USE_GOOGLE_TELEPHONY := true
TARGET_USE_PIXEL_FRAMEWORK := true

ALPHA_MAINTAINER := KamiKaonashi

# Debugging Flags
TARGET_INCLUDE_MATLOG := false
TARGET_DEFAULT_ADB_ENABLED := false

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := venus
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := M2011K2G
PRODUCT_NAME := lineage_venus

TARGET_BOOT_ANIMATION_RES := 1440

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
