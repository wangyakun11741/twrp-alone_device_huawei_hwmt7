# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_ARCH_VARIANT_CPU := cortex-a15
TARGET_CPU_VARIANT := cortex-a15
ARCH_ARM_HAVE_NEON := true
TARGET_USE_GATOR := true
TARGET_GLOBAL_CFLAGS += -mfpu=neon-vfpv4 -mtune=cortex-a15 -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon-vfpv4 -mtune=cortex-a15 -mfloat-abi=softfp
TARGET_EXTRA_CFLAGS := -mtune=cortex-a15 -mcpu=cortex-a15

# Compiler Optimizations
ARCH_ARM_HIGH_OPTIMIZATION := true

# Enable various prefetch optimizations
COMMON_GLOBAL_CFLAGS += -D__ARM_USE_PLD -D__ARM_CACHE_LINE_SIZE=64

# vendor flags
BOARD_VENDOR := huawei
BOARD_VENDOR_PLATFORM := hi3630
TARGET_BOOTLOADER_BOARD_NAME := hi3630
TARGET_BOARD_PLATFORM := hi3630
TARGET_SOC := kirin925

COMMON_GLOBAL_CFLAGS += -DHISILICON_HI3630

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Init
TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_PROVIDES_INIT_RC := true

# ========================================== KERNEL ==========================================
BOARD_KERNEL_CMDLINE 	:= ro.boot.hardware=hi3630 vmalloc=384M coherent_pool=512K mem=2044m@0x200000 psci=enable mmcparts=mmcblk0:p1(vrl),p2(vrl_backup),p7(modemnvm_factory),p18(splash),p22(dfx),p23(modemnvm_backup),p24(modemnvm_img),p25(modemnvm_system),p26(modem),p27(modem_dsp),p28(modem_om),p29(modemnvm_update),p31(3rdmodem),p32(3rdmodemnvm),p33(3rdmodemnvmbkp) user_debug=7 androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE	:= 2048
BOARD_KERNEL_BASE	:= 0x00600000
BOARD_KERNEL_OFFSET	:= 0x00008000
BOARD_RAMDISK_OFFSET	:= 0x03a00000
BOARD_SECOND_OFFSET	:= 0x00900000
BOARD_TAGS_OFFSET	:= 0xffc00000

BOARD_MKBOOTIMG_ARGS 	+= --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS 	+= --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS 	+= --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS 	+= --second_offset $(BOARD_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS 	+= --tags_offset $(BOARD_TAGS_OFFSET)

# Recovery
RECOVERY_FSTAB_VERSION := 2
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd_backlight0/brightness
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file

# debug for touchsreen, wyk
#TWRP_EVENT_LOGGING := true

