@echo off
:again5
title 车机工具箱 - 查看应用列表
color 2F
cls
echo.
echo ┌────────────────────────────────操作菜单─────────────────────────────────┐
echo │[1]显示系统应用包 [2]显示启用的包名 [3]显示第3方应用包 [4]显示禁用的包名 │
echo │[5]查找应用包     [0]退出                                                │
echo └─────────────────────────────────────────────────────────────────────────┘
echo ───────────────────────────────────────────────────────────────────────────
echo.
Choice /C 012345 /M "请输入菜单编号:"
echo.

if %ErrorLevel%==1 exit
if %ErrorLevel%==2 ..\adb\adb shell pm list packages -s -f
if %ErrorLevel%==3 ..\adb\adb shell pm list packages -e -f
if %ErrorLevel%==4 ..\adb\adb shell pm list packages -3 -f
if %ErrorLevel%==5 ..\adb\adb shell pm list packages -d -f
if %ErrorLevel%==6 5_1.bat
echo.
pause
goto again5
