@echo off
:again8
title 车机工具箱 - 卸载应用
color 2F

echo.
echo 卸载前不知道应用名称，可通过菜单[菜单5-查找应用包]获取应用包名称
echo 如卸载高德地图: com.autonavi.amapauto
echo ────────────────────────────────────────────────────────────────

set /p package=请输入需要卸载的应用包名称:

if defined package (
    ..\adb\adb uninstall %package%
) ELSE (
    goto again8
)
set package=

echo.
pause

0.bat
