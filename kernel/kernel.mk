# kernel
BOARD_KERNEL_IMAGE_NAME := Image

ifeq ($(BOARD_BOOT_HEADER_VERSION),3)

# Arch
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64

# No Kernel
TARGET_NO_KERNEL := true
BOARD_KERNEL_SEPARATED_DTBO := true
endif

ifeq ($(BOARD_BOOT_HEADER_VERSION),4)

# Arch
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64

# No Kernel
TARGET_NO_KERNEL := true
BOARD_RAMDISK_USE_LZ4 := true
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_USES_GENERIC_KERNEL_IMAGE := true
endif

# header
include device/android/common/kernel/header.mk

# mkbootimg
include device/android/common/kernel/mkbootimg.mk

# prebuilt
include device/android/common/kernel/prebuilt.mk

# cmdline
include device/android/common/kernel/cmdline.mk
