@echo off
title 车机工具箱 - 查看连接
color 2F
echo.
echo ┌─────────────────────使用说明及注意事项───────────────────────┐
echo │只看到List of devices attached  表示没有连接                  │
echo │看到 xxxxxxxx  device 或 x.x.x.x:5555 表示已连接              │
echo │看到存在多个连接存在时，表示多个设备连接，请断开其它无关设备。│
echo └──────────────────────────────────────────────────────────────┘
echo ────────────────────────────────────────────────────────────────
echo.
..\adb\adb devices
echo.
pause
0.bat
