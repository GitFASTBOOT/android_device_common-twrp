# A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    system \
    product \
    vendor \
    odm \
    odm_dlkm \
    vbmeta \
    vendor_boot \
    vendor_dlkm \
    vbmeta_system \
    vbmeta_vendor

# Vendor Modules
TW_LOAD_VENDOR_MODULES := true
TW_LOAD_VENDOR_BOOT_MODULES := true
TW_LOAD_VENDOR_MODULES_EXCLUDE_GKI := true

# Vendor_boot
BOARD_MOVE_RECOVERY_RESOURCES_TO_VENDOR_BOOT := true
BOARD_INCLUDE_RECOVERY_RAMDISK_IN_VENDOR_BOOT := true

# Partitions - file type
BOARD_ODM_DLKMIMAGE_FILE_SYSTEM_TYPE    := ext4
BOARD_VENDOR_DLKMIMAGE_FILE_SYSTEM_TYPE := ext4

# Copy Out
TARGET_COPY_OUT_ODM_DLKM := odm_dlkm
TARGET_COPY_OUT_VENDOR_DLKM := vendor_dlkm
