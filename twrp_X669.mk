#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
DEVICE_PATH := device/infinix/X669
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from infinix-X669 device
$(call inherit-product, device/infinix/X669/device.mk)




PRODUCT_DEVICE := X669
PRODUCT_NAME := twrp_X669
PRODUCT_BRAND := infinix
PRODUCT_MODEL := infinix X669
PRODUCT_MANUFACTURER := infinix
PRODUCT_RELEASE_NAME := infinix infinix X669





PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="X669-user 12 SP1A.210812.016 490 release-keys"

BUILD_FINGERPRINT := infinix/X669-GL/infinix-X669:12/SP1A.210812.016/GL-20231025V481:user/release-keys
