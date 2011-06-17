#
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#
# This is the product configuration for a T-Mobile GSM Optimus T,
# Specifically for use in USA.
#

$(call inherit-product, build/target/product/full_base.mk)

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
    lights.thunderg \
    gralloc.thunderg \
    copybit.thunderg \
    gadget_id \
    gps.thunderg \
    bdaddr_read

PRODUCT_PROPERTY_OVERRIDES += \
   ro.sf.lcd_density=160 \
   ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
   ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
   ro.com.google.clientidbase=android-hms-tmobile-us \
   ro.com.google.clientidbase.gmm=android-lge \
   ro.com.google.clientidbase.yt=android-lge \
   ro.com.google.clientidbase.am=android-tmobile-us \
   ro.com.google.clientidbase.vs=android-lge \
   ro.com.google.locationfeatures=1 \
   ro.com.google.networklocation=1 \
   ro.com.google.gmsversion=2.3_r3 \
   ro.setupwizard.enable_bypass=1 \
   ro.ril.gprsclass=12 \
   ro.ril.hsxpa=2 \
   wifi.supplicant_scan_interval=20 \
   debug.sf.hw=1 \
   ro.opengles.version=131072 \
   ro.ril.enable.dtm=0 \
   ro.ril.hsdpa.category=8 \
   ro.ril.hsupa.category=5 \
   ro.telephony.call_ring.multiple=false \
   windowsmgr.max_events_per_sec=260 \
   dalvik.vm.lockprof.threshold=500 \
   dalvik.vm.dexopt-flags=m=y \
   mobiledata.interfaces=gannet0,rmnet0,rmnet1,rmnet2

# Performences tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.execution-mode=int:jit \
    ro.compcache.default=1 \
    dalvik.vm.heapsize=24m \
    persist.sys.use_dithering=1 \

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/lge/thunderg/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/lge/thunderg/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/lge/thunderg/keylayout/thunder_keypad.kl:system/usr/keylayout/thunder_keypad.kl \
    device/lge/thunderg/keychars/thunder_keypad.kcm.bin:system/usr/keychars/thunder_keypad.kcm.bin
   
# Board-specific init (does not support charging in "power off" state yet)
PRODUCT_COPY_FILES += \
    device/lge/thunderg/init.thunderg.rc:root/init.thunderg.rc \
    device/lge/thunderg/ueventd.thunderg.rc:root/ueventd.thunderg.rc \
    device/lge/thunderg/init.rc:root/init.rc \
    device/lge/thunderg/ramdisk/init.qcom.rc:root/init.qcom.rc \
    device/lge/thunderg/ramdisk/initlogo.rle:root/initlogo.rle \
    device/lge/thunderg/ramdisk/sbin/chargerlogo:root/sbin/chargerlogo \
    device/lge/thunderg/ramdisk/sbin/bootlogo:root/sbin/bootlogo \
    device/lge/thunderg/ramdisk/sbin/ftm_power:root/sbin/ftm_power \
    device/lge/thunderg/ramdisk/chargerimages/battery_ani_01.rle:root/chargerimages/battery_ani_01.rle \
    device/lge/thunderg/ramdisk/chargerimages/battery_ani_02.rle:root/chargerimages/battery_ani_02.rle \
    device/lge/thunderg/ramdisk/chargerimages/battery_ani_03.rle:root/chargerimages/battery_ani_03.rle \
    device/lge/thunderg/ramdisk/chargerimages/battery_ani_04.rle:root/chargerimages/battery_ani_04.rle \
    device/lge/thunderg/ramdisk/chargerimages/battery_ani_05.rle:root/chargerimages/battery_ani_05.rle \
    device/lge/thunderg/ramdisk/chargerimages/battery_charging_01.rle:root/chargerimages/battery_charging_01.rle \
    device/lge/thunderg/ramdisk/chargerimages/battery_charging_02.rle:root/chargerimages/battery_charging_02.rle \
    device/lge/thunderg/ramdisk/chargerimages/battery_charging_03.rle:root/chargerimages/battery_charging_03.rle \
    device/lge/thunderg/ramdisk/chargerimages/battery_charging_04.rle:root/chargerimages/battery_charging_04.rle \
    device/lge/thunderg/ramdisk/chargerimages/battery_charging_05.rle:root/chargerimages/battery_charging_05.rle \
    device/lge/thunderg/ramdisk/chargerimages/battery_charging_06.rle:root/chargerimages/battery_charging_06.rle \
    device/lge/thunderg/ramdisk/chargerimages/battery_wait_ani_01.rle:root/chargerimages/battery_wait_ani_01.rle \
    device/lge/thunderg/ramdisk/chargerimages/battery_wait_ani_01.rle:root/chargerimages/battery_wait_ani_02.rle \
    device/lge/thunderg/ramdisk/chargerimages/black_bg.rle:root/chargerimages/black_bg.rle \
    device/lge/thunderg/ramdisk/chargerimages/battery_bg.rle:root/chargerimages/battery_bg.rle


# Media Configuration XML File
PRODUCT_COPY_FILES += \
    device/lge/thunderg/media_profiles.xml:system/etc/media_profiles.xml

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
    vendor/lge/thunderg/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw 

# Camera
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \
    vendor/lge/thunderg/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \
    vendor/lge/thunderg/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
   

# Wifi
PRODUCT_COPY_FILES += \
    device/lge/thunderg/prebuilt/lib/modules/wireless.ko:system/lib/modules/wireless.ko \
    device/lge/thunderg/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    vendor/lge/thunderg/proprietary/etc/wl/nvram.txt:system/etc/wl/nvram.txt \
    vendor/lge/thunderg/proprietary/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    vendor/lge/thunderg/proprietary/etc/wl/rtecdc.bin:system/etc/wl/rtecdc.bin \
    vendor/lge/thunderg/proprietary/bin/wl:system/bin/wl \
    vendor/lge/thunderg/proprietary/etc/wl/rtecdc-apsta.bin:system/etc/wl/rtecdc-apsta.bin \
    vendor/lge/thunderg/proprietary/etc/wl/rtecdc-mfgtest.bin:system/etc/wl/rtecdc-mfgtest.bin \
    device/lge/thunderg/prebuilt/lib/modules/tun.ko:system/lib/modules/tun.ko \
    device/lge/thunderg/prebuilt/lib/modules/cifs.ko:system/lib/modules/cifs.ko
   
# SD Card
PRODUCT_COPY_FILES += \
    device/lge/thunderg/vold.fstab:system/etc/vold.fstab \

# Audio
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so \
    vendor/lge/thunderg/proprietary/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/lge/thunderg/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \

# GPS
PRODUCT_COPY_FILES += \
    device/lge/thunderg/gps.conf:system/etc/gps.conf \
    device/lge/thunderg/loc_parameter.ini:system/etc/loc_parameter.ini \

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
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml 

# Neccesary Files
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/bin/qmuxd:system/bin/qmuxd \

# Touchscreen firmware updater
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/bin/tsdown:system/bin/tsdown \
    vendor/lge/thunderg/proprietary/etc/MELFAS_FIRM.bin:system/etc/MELFAS_FIRM.bin \

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

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
    vendor/lge/thunderg/proprietary/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \
    vendor/lge/thunderg/proprietary/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
    vendor/lge/thunderg/proprietary/lib/libOmxAdpcmDec.so:system/lib/libOmxAdpcmDec.so \
    vendor/lge/thunderg/proprietary/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \
    vendor/lge/thunderg/proprietary/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
    vendor/lge/thunderg/proprietary/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \
    vendor/lge/thunderg/proprietary/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \
    vendor/lge/thunderg/proprietary/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \
    vendor/lge/thunderg/proprietary/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
    vendor/lge/thunderg/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    vendor/lge/thunderg/proprietary/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \
    vendor/lge/thunderg/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    vendor/lge/thunderg/proprietary/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
    vendor/lge/thunderg/proprietary/lib/libOmxQcelpDec.so:system/lib/libOmxQcelpDec.so \
    vendor/lge/thunderg/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    vendor/lge/thunderg/proprietary/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \
    vendor/lge/thunderg/proprietary/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so \
    vendor/lge/thunderg/proprietary/lib/libomx_aacdec_sharedlibrary.so:system/lib/libomx_aacdec_sharedlibrary.so \
    vendor/lge/thunderg/proprietary/lib/libomx_amrdec_sharedlibrary.so:system/lib/libomx_amrdec_sharedlibrary.so \
    vendor/lge/thunderg/proprietary/lib/libomx_amrenc_sharedlibrary.so:system/lib/libomx_amrenc_sharedlibrary.so \
    vendor/lge/thunderg/proprietary/lib/libomx_avcdec_sharedlibrary.so:system/lib/libomx_avcdec_sharedlibrary.so \
    vendor/lge/thunderg/proprietary/lib/libomx_m4vdec_sharedlibrary.so:system/lib/libomx_m4vdec_sharedlibrary.so \
    vendor/lge/thunderg/proprietary/lib/libomx_mp3dec_sharedlibrary.so:system/lib/libomx_mp3dec_sharedlibrary.so \
    vendor/lge/thunderg/proprietary/lib/libomx_nextreaming_divxdec_sharedlibrary.so:system/lib/libomx_nextreaming_divxdec_sharedlibrary.so \
    vendor/lge/thunderg/proprietary/lib/libomx_nextreaming_wmadec_sharedlibrary.so:system/lib/libomx_nextreaming_wmadec_sharedlibrary.so \
    vendor/lge/thunderg/proprietary/lib/libomx_nextreaming_wmvdec_sharedlibrary.so:system/lib/libomx_nextreaming_wmvdec_sharedlibrary.so \
    vendor/lge/thunderg/proprietary/lib/libomx_sharedlibrary.so:system/lib/libomx_sharedlibrary.so \

# wipeirface (What is this?)
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/bin/wiperiface:system/bin/wiperiface \
    vendor/lge/thunderg/proprietary/etc/wiperconfig.xml:system/etc/wiperconfig.xml \

# Bluetooth
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/bin/BCM4325D1_004.002.004.0218.0248.hcd:system/bin/BCM4325D1_004.002.004.0218.0248.hcd \

# Files Needed For Wifi Calling
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/lib/libganril.so:system/lib/libganril.so \
    vendor/lge/thunderg/proprietary/lib/librilswitch.so:system/lib/librilswitch.so \
    device/lge/thunderg/Kineto/libkineto.so:system/lib/libkineto.so \
    device/lge/thunderg/Kineto/Kineto.apk:system/app/Kineto.apk 

# LG Scripts
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \


# Flex
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/etc/flex/flex.db:system/etc/flex/flex.db \
    vendor/lge/thunderg/proprietary/etc/flex/flex.xml:system/etc/flex/flex.xml \

# netmgr (What is this?)
PRODUCT_COPY_FILES += \
    vendor/lge/thunderg/proprietary/bin/netmgrd:system/bin/netmgrd \
    vendor/lge/thunderg/proprietary/lib/libdsutils.so:system/lib/libdsutils.so \
    vendor/lge/thunderg/proprietary/lib/libnetmgr.so:system/lib/libnetmgr.so

PRODUCT_LOCALES += mdpi

$(call inherit-product, device/common/gps/gps_us_supl.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_thunderg
PRODUCT_DEVICE := thunderg
