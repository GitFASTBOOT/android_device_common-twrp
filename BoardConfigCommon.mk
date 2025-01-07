#
# Copyright (C) 2024 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

COMMON_PATH := device/android/common

TARGET_RECOVERY_DEVICE_DIRS := \
    $(COMMON_PATH) \
    $(DEVICE_PATH)

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53

#64bit
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_IS_64_BIT := true
TARGET_USES_64_BIT_BINDER := true

# Hack prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888

# samsung
ifeq ($(BOARD_VENDOR),samsung)
include device/android/common/samsung/samsung.mk
endif

# kernel
include device/android/common/kernel/kernel.mk

# boot
ifeq ($(BOARD_STORE_RAMDISK_IN_BOOT),true)
include device/android/common/target/boot.mk
endif

# vendor_boot
ifeq ($(BOARD_STORE_RAMDISK_IN_VENDORBOOT),true)
include device/android/common/target/vendor_boot.mk
endif

## Inherit partitions flags
include device/android/common/partitions.mk

# Twrp flags
include device/android/common/TW_flags.mk
