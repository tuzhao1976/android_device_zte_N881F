USE_CAMERA_STUB := false

# inherit from the proprietary version
-include vendor/zte/N881F/BoardConfigVendor.mk

# CPU
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6-vfp

# Target and board properties
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := msm7x27
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := N881F
TARGET_USERIMAGES_USE_EXT4 := true

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom
BOARD_KERNEL_BASE := 0x00ee3004
BOARD_KERNEL_PAGESIZE := 4096

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1572864000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 28651290624
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/zte/N881F/kernel

# Keymapping & UI
RECOVERY_USE_CHINESE_FONT := true

# Recovery start

ifeq ($(RECOVERY_USE_CHINESE_FONT), true)
# Chinese Graphic
BOARD_CUSTOM_RECOVERY_UI := ../../device/zte/N881F/recovery_cn/recovery_ui.c
BOARD_CUSTOM_RECOVERY_EXTENDCMD := ../../device/zte/N881F/recovery_cn/extendedcommands.c
BOARD_CUSTOM_RECOVERY_EXTENDCMD_USERDATA := ../../device/zte/N881F/recovery_cn/recovery.c
BOARD_CUSTOM_RECOVERY_UI_BASIC := ../../device/zte/N881F/recovery_cn/ui.c

else
BOARD_CUSTOM_RECOVERY_UI := ../../device/zte/N881F/recovery_en/recovery_ui.c
BOARD_CUSTOM_RECOVERY_EXTENDCMD := ../../device/zte/N881F/recovery_en/extendedcommands.c
endif

TARGET_RECOVERY_INITRC := device/zte/N881F/recovery/recovery.rc
TARGET_RECOVERY_FSTAB := device/zte/N881F/recovery/recovery.fstab

# Recovery end

BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true

# chargers
BOARD_CHARGER_RES := device/zte/N881F/charger

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# Browser
WITH_JIT := true
HTTP := chrome

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# QCOM
BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_LEGACY_OMX

# Graphics
BOARD_EGL_CFG := device/zte/N881F/prebuilt/system/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_QCOM_DISPLAY_VARIANT := legacy
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_COMPAT -DQCOM_NO_SECURE_PLAYBACK

# Camera
TARGET_DISABLE_ARM_PIE := true
BOARD_NEEDS_MEMORYHEAPPMEM := true


# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO


# Debug mode
ADDITIONAL_DEFAULT_PROPERTIES += ro.debuggable=1
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
