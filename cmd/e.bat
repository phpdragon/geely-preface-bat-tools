@echo off
color 2F

echo.
echo ��ʼ����adb����...
@echo on
..\adb\adb kill-server
..\adb\adb start-server
..\adb\adb devices
@echo off
echo.
echo ����adb�������
echo.
pause
0.bat
