# header 2
ifeq ($(BOARD_BOOTIMG_HEADER_VERSION),2)

# mediatek
ifeq ($(BOARD_USES_MTK_HARDWARE),true)
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
endif

# qcom
ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
BOARD_KERNEL_CMDLINE := \
    console=ttyMSM0,115200n8 \
    androidboot.hardware=qcom \
    androidboot.console=ttyMSM0 \
    lpm_levels.sleep_disabled=1 \
    video=vfb:640x400,bpp=32,memsize=3072000 \
    msm_rtb.filter=0x237 \
    service_locator.enable=1 \
    swiotlb=2048 \
    loop.max_part=7
endif

# sprd
ifeq ($(BOARD_USES_SPRD_HARDWARE),true)
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8
endif

endif

# header 4
ifeq ($(BOARD_BOOT_HEADER_VERSION),4)

# mediatek
ifeq ($(BOARD_USES_MTK_HARDWARE),true)
BOARD_VENDOR_CMDLINE := bootopt=64S3,32N2,64N2
endif

# qcom
ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
BOARD_VENDOR_CMDLINE := \
    console=ttyMSM0,115200n8 \
    androidboot.hardware=qcom \
    androidboot.console=ttyMSM0 \
    lpm_levels.sleep_disabled=1 \
    video=vfb:640x400,bpp=32,memsize=3072000 \
    msm_rtb.filter=0x237 \
    service_locator.enable=1 \
    swiotlb=2048 \
    loop.max_part=7
endif

# sprd
ifeq ($(BOARD_USES_SPRD_HARDWARE),true)
BOARD_VENDOR_CMDLINE := console=ttyS1,115200n8
endif

endif
