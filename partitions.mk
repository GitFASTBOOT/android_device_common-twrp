# Partitions
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := false
BOARD_USES_METADATA_PARTITION := true

#fstype
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs

# Workaround for error copying vendor system system_ext product files to recovery ramdisk
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
TARGET_COPY_OUT_SYSTEM := system

#SUPER
BOARD_SUPER_PARTITION_SIZE := 9126805504 
BOARD_SUPER_PARTITION_GROUPS := android_dynamic_partitions
BOARD_ANDROID_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext vendor product
BOARD_ANDROID_DYNAMIC_PARTITIONS_SIZE := 9122611200 

