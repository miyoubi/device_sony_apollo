#
# Copyright (C) 2018-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from device_sony_tama
include device/sony/tama/BoardConfigCommon.mk

DEVICE_PATH := device/sony/apollo

# Display
TARGET_SCREEN_DENSITY := 480

# Kernel
TARGET_KERNEL_CONFIG := tama_apollo_defconfig

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/configs/vintf/manifest.xml

# Partitions
BOARD_USERDATAIMAGE_PARTITION_SIZE := 51448807424

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/configs/props/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/configs/props/vendor.prop

# Inherit from vendor_sony_apollo
include vendor/sony/tama/apollo/BoardConfigVendor.mk
