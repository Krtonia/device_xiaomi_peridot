#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common InfinityOS stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Inherit from peridot device
$(call inherit-product, device/xiaomi/peridot/device.mk)

# Inherit from the MiuiCamera setup
$(call inherit-product-if-exists, device/xiaomi/peridot-miuicamera/device.mk)

PRODUCT_NAME := infinity_peridot
PRODUCT_DEVICE := peridot
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 24069PC21G

# Infinity Flags
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_ACCORD := false
EXTRA_UDFPS_ICONS := true
TARGET_HAS_UDFPS := true
INFINITY_BUILD_TYPE := OFFICIAL
INFINITY_MAINTAINER := Shikhar|Atharva
TARGET_SUPPORTS_BLUR := true

# Gapps
WITH_GAPPS := true

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="peridot_global-user 15 AQ3A.240912.001 OS2.0.202.0.VNPMIXM release-keys" \
    BuildFingerprint=POCO/peridot_global/peridot:15/AQ3A.240912.001/OS2.0.202.0.VNPMIXM:user/release-keys \
    DeviceName=peridot \
    DeviceProduct=peridot_global \
    SystemName=peridot_global \
    SystemDevice=peridot

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi