@echo off
setlocal enabledelayedexpansion

title 车机工具箱 - 还原开机视频
color 2F

set animation_file_name=startanimation.mp4
set local_animation_file=..\media\%animation_file_name%
set animation_file=/system/media/%animation_file_name%
set animation_file_bak=%animation_file%.bak

set cmd=..\adb\adb shell "ls %animation_file_bak%|wc -l"
for /f "delims=" %%i in ('!cmd!') do (
    set "file_exist=%%i"
)
IF %file_exist% gtr 0 (
    goto restore_media
) ELSE (
    echo 开机视频备份文件不存在: %animation_file_bak%，无法还原！！！
    pause
    exit
)

:restore_media
echo.
echo 开始还原开机视频...
@echo on
..\adb\adb root
..\adb\adb remount
..\adb\adb shell "if [ -f \"%animation_file_bak%\" ]; then rm -f %animation_file%; cp -f %animation_file_bak% %animation_file%; fi"
..\adb\adb shell chmod 0755 %animation_file%
@echo off
echo.
echo 开机视频还原成功！
echo.
Choice /C 123 /M "[1]重启车机看效果 [2]返回上一级菜单 [3]退出:"
if %ErrorLevel%==1 ..\adb\adb shell reboot
if %ErrorLevel%==2 c.bat
if %ErrorLevel%==3 exit
