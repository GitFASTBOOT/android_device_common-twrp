# A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    vbmeta \
    vbmeta_system \
    dtbo \
    boot \
    system \
    system_ext \
    vendor \
    product

# Recovery
BOARD_USES_RECOVERY_AS_BOOT := true

