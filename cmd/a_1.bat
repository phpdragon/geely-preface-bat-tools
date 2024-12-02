@echo off
title 车机工具箱 - 截屏
color 2F

for /f "tokens=2 delims==" %%i in ('wmic os get localdatetime /value') do set datetime=%%i
set year=%datetime:~0,4%
set month=%datetime:~4,2%
set day=%datetime:~6,2%
set hour=%datetime:~8,2%
set min=%datetime:~10,2%
set sec=%datetime:~12,2%
set file_path=%year%%month%%day%%hour%%min%%sec%_%random%.png

echo 开始截屏...
@echo on
..\adb\adb shell screencap /sdcard/cut.png
..\adb\adb pull /sdcard/cut.png ../img/%file_path%
..\adb\adb shell rm -f /sdcard/cut.png
@echo off
echo.
echo 截屏完成
pause
a.bat
