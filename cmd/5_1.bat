@echo off
:again_5_1
title 车机工具箱 - 模糊查找应用包
color 2F

echo.
set /p package=请输入想搜索的应用包名称(支持模糊匹配):
echo.
IF defined package (
    ..\adb\adb shell pm list packages -f %package%
) ELSE (
    goto again_5_1
)
set package=
echo.
pause

5.bat
