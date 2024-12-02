@echo off
color 2F

echo.
echo 开始重启adb服务...
@echo on
..\adb\adb kill-server
..\adb\adb start-server
..\adb\adb devices
@echo off
echo.
echo 重启adb服务完毕
echo.
pause
0.bat
