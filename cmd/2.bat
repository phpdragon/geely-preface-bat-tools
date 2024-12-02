@echo off
:again_2
title 车机工具箱 - 连接车机WIFI调试模式
color 2F
echo.
echo ┌──────────────使用说明及注意事项────────────────────────────────────────┐
echo │请先连接网络，电脑与车机要在同一个网络，保证电脑与车机能通讯。          │
echo │打开车机WIFI调试模式，在车机屏上找到IP，测试IP能ping通后，开始连接操作。│
echo │看到connected to x.x.x.x:5555 表示连接成功！                            │
echo │看到unable to connect to x.x.x.x:5555 表示连接失败！                    │
echo └────────────────────────────────────────────────────────────────────────┘
echo ──────────────────────────────────────────────────────────────────────────
echo.
set /p ipaddr=请输入车机IP:
echo.
IF defined ipaddr (
    ..\adb\adb kill-server
    ..\adb\adb connect %ipaddr%
    ..\adb\adb devices
) ELSE (
    goto again_2
)

set ipaddr=
echo.
pause
0.bat
