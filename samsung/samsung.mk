# samsung partitions
BOARD_ROOT_EXTRA_FOLDERS := \
    carrier \
    efs \
    omr \
    optics \
    prism \
    spu \
    persist \
    sec_efs

# custom bootimg
BOARD_CUSTOM_BOOTIMG_MK := device/android/common/samsung/customboot.mk
BOARD_CUSTOM_BOOTIMG := true

# Twrp flags
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
