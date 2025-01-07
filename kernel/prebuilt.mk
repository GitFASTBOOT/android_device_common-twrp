# prebuilt dtb
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img

# prebuilt kernel
ifeq ($(BOARD_BOOTIMG_HEADER_VERSION),2)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
endif

