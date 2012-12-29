USE_CAMERA_STUB := true
-include device/huawei/msm7x27a-common/BoardConfigCommon.mk
# inherit from the proprietary version
-include vendor/huawei/c8812/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := c8812
TARGET_OTA_ASSERT_DEVICE := c8812,C8812,hwc8812,msm7627a

BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=huawei
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true

# Kernel 
TARGET_KERNEL_SOURCE := kernel/huawei/G300
TARGET_KERNEL_CONFIG := c8812_defconfig

# Vold
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_SECOND_LUN_NUM := 1
BOARD_VOLD_MAX_PARTITIONS := 19
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := false
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"

