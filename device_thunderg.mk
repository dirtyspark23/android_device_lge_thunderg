#$(call inherit-product, build/target/product/full.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/thunderg/overlay

TARGET_PREBUILT_KERNEL := device/lge/thunderg/kernel

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lge/thunderg/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_PACKAGES += \
    librs_jni \
    libmm-omxcore \
    libOmxCore \
    libOmxVenc \
    libOmxVdec \
    brcm_patchram_plus \
    gps.thunderg \
    lights.thunderg

PRODUCT_PACKAGES += \
    flash_image \
    dump_image \
    erase_image

# Ringtones required for bootanimation
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/sounds/lgeSounds/PowerOn.mp3:system/sounds/lgeSounds/PowerOn.mp3 \
    vendor/lge/thunderg/proprietary/sounds/lgeSounds/Startup.mp3:system/sounds/lgeSounds/Startup.mp3 \

# Backlight
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/lib/hw/lights.thunderg.so:system/lib/hw/lights.thunderg.so \

# GPS
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/etc/loc_parameter.ini:system/etc/loc_parameter.ini \
    vendor/lge/thunderg/proprietary/lib/libloc_api.so:system/lib/libloc_api.so \
    vendor/lge/thunderg/proprietary/lib/libgps.so:system/lib/libgps.so \
    vendor/lge/thunderg/proprietary/lib/libloc.so:system/lib/libloc.so \
    vendor/lge/thunderg/proprietary/lib/libcommondefs.so:system/lib/libcommondefs.so \
    vendor/lge/thunderg/proprietary/lib/libloc-rpc.so:system/lib/libloc-rpc.so \

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Keylayouts
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/usr/keylayout/thunder_keypad.kl:system/usr/keylayout/thunder_keypad.kl \
    vendor/lge/thunderg/proprietary/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    vendor/lge/thunderg/proprietary/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    vendor/lge/thunderg/proprietary/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    vendor/lge/thunderg/proprietary/usr/keychars/thunder_keypad.kcm.bin:system/usr/keychars/thunder_keypad.kcm.bin \
    vendor/lge/thunderg/proprietary/usr/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    vendor/lge/thunderg/proprietary/usr/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin

# Board-specific init (does not support charging in "power off" state yet)
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/init.thunderg.rc:root/init.thunderg.rc \
    vendor/lge/thunderg/proprietary/init.rc:root/init.rc \
    vendor/lge/thunderg/proprietary/initlogo.rle:root/initlogo.rle \
    vendor/lge/thunderg/proprietary/sbin/bootlogo:root/sbin/bootlogo \
    vendor/lge/thunderg/proprietary/sbin/chargerlogo:root/sbin/chargerlogo \
    vendor/lge/thunderg/proprietary/sbin/ftm_power:root/sbin/ftm_power \
    vendor/lge/thunderg/proprietary/bin/battery_charging:system/bin/battery_charging \
    vendor/lge/thunderg/proprietary/bin/bootanimation:system/bin/bootanimation \
    vendor/lge/thunderg/proprietary/bootimages/opening_01.rle:root/bootimages/opening_01.rle \
    vendor/lge/thunderg/proprietary/bootimages/opening_02.rle:root/bootimages/opening_02.rle \
    vendor/lge/thunderg/proprietary/bootimages/opening_03.rle:root/bootimages/opening_03.rle \
    vendor/lge/thunderg/proprietary/bootimages/opening_04.rle:root/bootimages/opening_04.rle \
    vendor/lge/thunderg/proprietary/bootimages/opening_05.rle:root/bootimages/opening_05.rle \
    vendor/lge/thunderg/proprietary/bootimages/opening_06.rle:root/bootimages/opening_06.rle \
    vendor/lge/thunderg/proprietary/bootimages/opening_07.rle:root/bootimages/opening_07.rle \
    vendor/lge/thunderg/proprietary/bootimages/opening_08.rle:root/bootimages/opening_08.rle \
    vendor/lge/thunderg/proprietary/chargerimages/battery_ani_01.rle:root/chargerimages/battery_ani_01.rle \
    vendor/lge/thunderg/proprietary/chargerimages/battery_ani_02.rle:root/chargerimages/battery_ani_02.rle \
    vendor/lge/thunderg/proprietary/chargerimages/battery_ani_03.rle:root/chargerimages/battery_ani_03.rle \
    vendor/lge/thunderg/proprietary/chargerimages/battery_ani_04.rle:root/chargerimages/battery_ani_04.rle \
    vendor/lge/thunderg/proprietary/chargerimages/battery_ani_05.rle:root/chargerimages/battery_ani_05.rle \
    vendor/lge/thunderg/proprietary/chargerimages/battery_charging_01.rle:root/chargerimages/battery_charging_01.rle \
    vendor/lge/thunderg/proprietary/chargerimages/battery_charging_02.rle:root/chargerimages/battery_charging_02.rle \
    vendor/lge/thunderg/proprietary/chargerimages/battery_charging_03.rle:root/chargerimages/battery_charging_03.rle \
    vendor/lge/thunderg/proprietary/chargerimages/battery_charging_04.rle:root/chargerimages/battery_charging_04.rle \
    vendor/lge/thunderg/proprietary/chargerimages/battery_charging_05.rle:root/chargerimages/battery_charging_05.rle \
    vendor/lge/thunderg/proprietary/chargerimages/battery_charging_06.rle:root/chargerimages/battery_charging_06.rle \
    vendor/lge/thunderg/proprietary/chargerimages/battery_wait_ani_01.rle:root/chargerimages/battery_wait_ani_01.rle \
    vendor/lge/thunderg/proprietary/chargerimages/battery_wait_ani_01.rle:root/chargerimages/battery_wait_ani_02.rle \
    vendor/lge/thunderg/proprietary/chargerimages/black_bg.rle:root/chargerimages/black_bg.rle \
    vendor/lge/thunderg/proprietary/chargerimages/battery_bg.rle:root/chargerimages/battery_bg.rle \
    vendor/lge/thunderg/proprietary/ueventd.thunderg.rc:root/ueventd.thunderg.rc \
    vendor/lge/thunderg/proprietary/ueventd.rc:root/ueventd.rc \

# 2D (using proprietary because of poor perfomance of open source libs)
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/lib/hw/gralloc.default.so:system/lib/hw/gralloc.default.so \
    vendor/lge/thunderg/proprietary/lib/hw/gralloc.thunderg.so:system/lib/hw/gralloc.thunderg.so \
    vendor/lge/thunderg/proprietary/lib/hw/copybit.thunderg.so:system/lib/hw/copybit.thunderg.so \

# Sensors
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/lib/hw/sensors.thunderg.so:system/lib/hw/sensors.thunderg.so \
    vendor/lge/thunderg/proprietary/bin/ami304d:system/bin/ami304d \

# 3D
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    vendor/lge/thunderg/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    vendor/lge/thunderg/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    vendor/lge/thunderg/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    vendor/lge/thunderg/proprietary/lib/libgsl.so:system/lib/libgsl.so \
    vendor/lge/thunderg/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    vendor/lge/thunderg/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \

# Camera
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \
    vendor/lge/thunderg/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \
    vendor/lge/thunderg/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \


# Wifi
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/lib/modules/wireless.ko:system/lib/modules/wireless.ko \
    vendor/lge/thunderg/proprietary/lib/modules/tun.ko:system/lib/modules/tun.ko \
    vendor/lge/thunderg/proprietary/etc/wl/nvram.txt:system/etc/wl/nvram.txt \
    vendor/lge/thunderg/proprietary/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpd/dhcpcd.conf \
    vendor/lge/thunderg/proprietary/etc/wl/rtecdc.bin:system/etc/wl/rtecdc.bin \
    vendor/lge/thunderg/proprietary/etc/wl/rtecdc-apsta.bin:system/etc/wl/rtecdc-apsta.bin \
    vendor/lge/thunderg/proprietary/etc/wl/rtecdc-mfgtest.bin:system/etc/wl/rtecdc-mfgtest.bin

# SD Card
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/etc/vold.fstab:system/etc/vold.fstab \

# Audio
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    vendor/lge/thunderg/proprietary/lib/libaudioalsa.so:system/lib/libaudioalsa.so \
    vendor/lge/thunderg/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so \

# Device permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \

# LGE services
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/bin/qmuxd:system/bin/qmuxd \
    vendor/lge/thunderg/proprietary/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    vendor/lge/thunderg/proprietary/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    vendor/lge/thunderg/proprietary/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    vendor/lge/thunderg/proprietary/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    vendor/lge/thunderg/proprietary/init.qcom.rc:root/init.qcom.rc
    

# rmt_storage (What is this?)
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/bin/rmt_storage:system/bin/rmt_storage \

# port-bridge (What is this?)
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/bin/port-bridge:system/bin/port-bridge \

# wipeirface (What is this?)
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/bin/wiperiface:system/bin/wiperiface \

# Touchscreen firmware updater
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/bin/tsdown:system/bin/tsdown \
    vendor/lge/thunderg/proprietary/etc/MELFAS_FIRM.bin:system/etc/MELFAS_FIRM.bin \

# netmgr (What is this?)
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/bin/netmgrd:system/bin/netmgrd \
    vendor/lge/thunderg/proprietary/lib/libdsutils.so:system/lib/libdsutils.so \
    vendor/lge/thunderg/proprietary/lib/libnetmgr.so:system/lib/libnetmgr.so


PRODUCT_PROPERTY_OVERRIDES += \
    ro.lge.vibrator_amp=125 \

# Move dalvik-cache to /data
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-data-only=1 \

# RIL
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/lib/libril-qc-1.so:system/lib/libril-qc-1.so \
    vendor/lge/thunderg/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so \
    vendor/lge/thunderg/proprietary/lib/libdsm.so:system/lib/libdsm.so \
    vendor/lge/thunderg/proprietary/lib/libqueue.so:system/lib/libqueue.so \
    vendor/lge/thunderg/proprietary/lib/libdiag.so:system/lib/libdiag.so \
    vendor/lge/thunderg/proprietary/lib/libauth.so:system/lib/libauth.so \
    vendor/lge/thunderg/proprietary/lib/libcm.so:system/lib/libcm.so \
    vendor/lge/thunderg/proprietary/lib/libnv.so:system/lib/libnv.so \
    vendor/lge/thunderg/proprietary/lib/libpbmlib.so:system/lib/libpbmlib.so \
    vendor/lge/thunderg/proprietary/lib/libwms.so:system/lib/libwms.so \
    vendor/lge/thunderg/proprietary/lib/libwmsts.so:system/lib/libwmsts.so \
    vendor/lge/thunderg/proprietary/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    vendor/lge/thunderg/proprietary/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
    vendor/lge/thunderg/proprietary/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
    vendor/lge/thunderg/proprietary/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
    vendor/lge/thunderg/proprietary/lib/liboem_rapi.so:system/lib/liboem_rapi.so \
    vendor/lge/thunderg/proprietary/lib/libsnd.so:system/lib/libsnd.so \
    vendor/lge/thunderg/proprietary/lib/libqmi.so:system/lib/libqmi.so \
    vendor/lge/thunderg/proprietary/lib/libdll.so:system/lib/libdll.so \
    vendor/lge/thunderg/proprietary/lib/liblgeat.so:system/lib/liblgeat.so \
    vendor/lge/thunderg/proprietary/lib/liblgdrm.so:system/lib/liblgdrm.so \
    vendor/lge/thunderg/proprietary/lib/liblgdrmwbxml.so:system/lib/liblgdrmwbxml.so \
    vendor/lge/thunderg/proprietary/lib/liblgerft.so:system/lib/liblgerft.so \
    vendor/lge/thunderg/proprietary/lib/libbcmwl.so:system/lib/libbcmwl.so \
    vendor/lge/thunderg/proprietary/lib/libdss.so:system/lib/libdss.so \
    vendor/lge/thunderg/proprietary/bin/rild:system/bin/rild \

# propietary libril
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/lib/libril.so:system/lib/libril.so \

# OMX
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \

# Bluetooth
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/bin/BCM4325D1_004.002.004.0218.0248.hcd:system/bin/BCM4325D1_004.002.004.0218.0248.hcd \
    vendor/lge/thunderg/proprietary/bin/btld:system/bin/btld \
    vendor/lge/thunderg/proprietary/etc/bluetooth/audio.conf:system/etc/bluetooth/audio.conf \
    vendor/lge/thunderg/proprietary/etc/bluetooth/auto_pairing.conf:system/etc/bluetooth/auto_pairing.conf \
    vendor/lge/thunderg/proprietary/etc/bluetooth/blacklist.conf:system/etc/bluetooth/blacklist.conf \
    vendor/lge/thunderg/proprietary/etc/bluetooth/input.conf:system/etc/bluetooth/input.conf \
    vendor/lge/thunderg/proprietary/etc/bluetooth/main.conf:system/etc/bluetooth/main.conf \

# A "special" libcrypto for Kineto
PRODUCT_COPY_FILES += \
    device/lge/thunderg/prebuilt/libcryp98.so:system/lib/libcryp98.so \

# Files Needed For Wifi Calling
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/app/Kineto.apk:system/app/Kineto.apk \
    vendor/lge/thunderg/proprietary/lib/libkineto.so:/system/lib/linkineto.so \
    vendor/lge/thunderg/proprietary/lib/libganril.so:system/lib/libganril.so \
    vendor/lge/thunderg/proprietary/lib/librilswitch.so:system/lib/librilswitch.so \

$(call inherit-product, device/common/gps/gps_us_supl.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_thunderg
PRODUCT_BRAND := LGE
PRODUCT_DEVICE := thunderg
PRODUCT_MODEL := LG-P509
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=thunderg
