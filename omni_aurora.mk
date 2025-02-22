#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from aurora device
$(call inherit-product, device/xiaomi/aurora/device.mk)

PRODUCT_DEVICE := aurora
PRODUCT_NAME := omni_aurora
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 24031PN0DC
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="aurorapro-user 14 UKQ1.231003.002 V816.0.9.0.UNACNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/aurorapro/aurora:14/UKQ1.231003.002/V816.0.9.0.UNACNXM:user/release-keys
