@echo off
title 车机工具箱 - 更换开机视频
color 2F

set animation_file_name=startanimation.mp4
set local_animation_file=..\media\%animation_file_name%
set animation_file=/system/media/%animation_file_name%
set animation_file_bak=%animation_file%.bak

IF EXIST "%local_animation_file%" (
    goto change_media
) ELSE (
    echo 本地开机视频文件不存在: %local_animation_file%
    pause
    exit
)

:change_media
echo.
echo 开始更换开机视频...
@echo on
..\adb\adb root
..\adb\adb remount
..\adb\adb shell "if [ ! -f \"%animation_file_bak%\" ]; then cp -f %animation_file% %animation_file_bak%; fi"
..\adb\adb shell "if [ -f \"%animation_file_bak%\" ]; then rm -f %animation_file%; fi"
..\adb\adb push %local_animation_file% %animation_file%
..\adb\adb shell chmod 0755 %animation_file%
@echo off
echo.
echo 开机视频更换完成！
echo.
Choice /C 123 /M "[1]重启车机看效果 [2]返回上一级菜单 [3]退出:"
if %ErrorLevel%==1 ..\adb\adb shell reboot
if %ErrorLevel%==2 c.bat
if %ErrorLevel%==3 exit
