@echo off
title 车机工具箱 - 车机ROOT         BY 汽车之家[岁月静好_56] V1
color 2F
cls

set CPU_TYPE=armv7
set LIB_FORDER=lib

cd r

..\..\adb\adb wait-for-device
..\..\adb\adb root
..\..\adb\adb remount
..\..\adb\adb shell setenforce 0
..\..\adb\adb push common/Superuser.apk /system/app/SuperSU/SuperSU.apk
..\..\adb\adb shell chmod 0644 /system/app/SuperSU/SuperSU.apk
..\..\adb\adb shell chcon u:object_r:system_file:s0 /system/app/SuperSU/SuperSU.apk
..\..\adb\adb shell pm install -r /system/app/SuperSU/SuperSU.apk

..\..\adb\adb shell "echo '# Disable SELINUX & Run SuperSU deamon' >> /system/bin/install-recovery.sh"
..\..\adb\adb shell "echo '/system/xbin/daemonsu --auto-daemon' >> /system/bin/install-recovery.sh"
..\..\adb\adb shell chmod 0755 /system/bin/install-recovery.sh

..\..\adb\adb push %CPU_TYPE%/su /system/xbin/su
..\..\adb\adb shell chmod 0755 /system/xbin/su
..\..\adb\adb shell chcon u:object_r:system_file:s0 /system/xbin/su

..\..\adb\adb push %CPU_TYPE%/su /system/bin/.ext/.su
..\..\adb\adb shell chmod 0755 /system/bin/.ext/.su
..\..\adb\adb shell chcon u:object_r:system_file:s0 /system/bin/.ext/.su

..\..\adb\adb push %CPU_TYPE%/su /system/xbin/daemonsu
..\..\adb\adb shell chmod 0755 /system/xbin/daemonsu
..\..\adb\adb shell chcon u:object_r:system_file:s0 /system/xbin/daemonsu

..\..\adb\adb push %CPU_TYPE%/supolicy /system/xbin/supolicy
..\..\adb\adb shell chmod 0755 /system/xbin/supolicy
..\..\adb\adb shell chcon u:object_r:system_file:s0 /system/xbin/supolicy

..\..\adb\adb push %CPU_TYPE%/libsupol.so /system/%LIB_FORDER%/libsupol.so
..\..\adb\adb shell chmod 0755 /system/%LIB_FORDER%/libsupol.so
..\..\adb\adb shell chcon u:object_r:system_file:s0 /system/%LIB_FORDER%/libsupol.so

echo root完成,按任意键重启车机,再到root页面开启root操作！
echo.
pause
..\..\adb\adb shell reboot
