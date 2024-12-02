@echo off
:again1
title 车机工具箱 - 车机通讯测试
color 2F

echo 当前电脑ip:
ipconfig|findstr /i ipv4

echo.
set /p ipaddr=请输入车机IP:

if defined ipaddr (
    ping %ipaddr%
) ELSE (
    goto again1
)
set ipaddr=
echo.
pause
0.bat
