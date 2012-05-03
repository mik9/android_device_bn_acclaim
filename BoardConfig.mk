USE_CAMERA_STUB := true
BOARD_HAVE_FAKE_GPS := true

# inherit from the proprietary version
-include vendor/bn/acclaim/BoardConfigVendor.mk

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := omap4
TARGET_BOOTLOADER_BOARD_NAME := acclaim
TARGET_NO_RADIOIMAGE := true
BOARD_HAVE_BLUETOOTH := false
TARGET_NO_BOOTLOADER := true
# TARGET_NO_RECOVERY := true
BOARD_EGL_CFG := device/bn/acclaim/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_USERIMAGES_USE_EXT4 := true

# OMAP
OMAP_ENHANCEMENT := true
ifdef OMAP_ENHANCEMENT
COMMON_GLOBAL_CFLAGS += -DOMAP_ENHANCEMENT -DTARGET_OMAP4
endif

BOARD_HAS_SDCARD_INTERNAL := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/platform/mmci-omap-hs.0/by-num/p1
BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/platform/mmci-omap-hs.1/by-name/media
# BOARD_VOLD_MAX_PARTITIONS := 32
# BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/usb_mass_storage/lun0/file"
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"

# Connectivity - Wi-Fi
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wl12xx
BOARD_WLAN_DEVICE                := wl12xx_mac80211
BOARD_SOFTAP_DEVICE              := wl12xx_mac80211
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/wl12xx_sdio.ko"
WIFI_DRIVER_MODULE_NAME          := "wl12xx_sdio"
WIFI_FIRMWARE_LOADER             := ""
COMMON_GLOBAL_CFLAGS += -DUSES_TI_MAC80211

BOARD_KERNEL_CMDLINE := androidboot.console=ttyO0 console=ttyO0,115200n8 mem=448M@0x80000000 mem=512M@0xA0000000 init=/init rootwait vram=32M,82000000 omapfb.vram=0:5M@82000000
BOARD_KERNEL_BASE := 0x80080000
# BOARD_KERNEL_PAGESIZE := 0x00001000

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 631627776
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1907875840
BOARD_FLASH_BLOCK_SIZE := 1

TARGET_PREBUILT_KERNEL := device/bn/acclaim/kernel

#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true

BOARD_CUSTOM_BOOTIMG_MK := device/bn/acclaim/releasetools/BootableImages.mk
TARGET_PREBUILT_RECOVERY_KERNEL := device/bn/acclaim/recovery_kernel
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/bn/acclaim/acclaim_recovery_keys.c
