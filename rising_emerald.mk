#
# Copyright (C) 2023 LineageOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/xiaomi/emerald/device.mk)

# Inherit some common stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := emerald
PRODUCT_NAME := Rising_emerald
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 2312FPCA6G
TARGET_USES_PICO_GAPPS := true
WITH_GAPPS := true
PRODUCT_MANUFACTURER := Xiaomi
RISING_MAINTAINER="@androidme77"

BUILD_FINGERPRINT :=POCO/emerald_p_id/emerald:14/UP1A.231005.007/V816.0.6.0.UNFIDXM:user/release-keys
PRIVATE_BUILD_DESC="emerald_p_id-user 14 UP1A.231005.007 V816.0.6.0.UNFIDXM release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
       DeviceProduct=emerald \
       RisingChipset="Mediatek Helio G99 Ultra" \
       RisingMaintainer="Androidm77"

       
PRODUCT_NO_CAMERA := false
TARGET_DEFAULT_PIXEL_LAUNCHER := false
TARGET_ENABLE_PIXEL_FEATURES := true
TARGET_ENABLE_BLUR := false

       
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_HAS_UDFPS := true
