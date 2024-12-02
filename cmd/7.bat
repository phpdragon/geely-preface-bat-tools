@echo off
title 车机工具箱 - 获取车机屏幕当前软件启动位置
color 2F
echo.
echo ┌───────────────────────使用说明及注意事项──────────────────────┐
echo │看到类似下面，表示已经成功获取                                 │
echo │Window{5797dcc u0 com.tencent.mm/com.tencent.mm.ui.LauncherUI} │
echo │                 │包名         │程序入口                       │
echo └───────────────────────────────────────────────────────────────┘
echo ─────────────────────────────────────────────────────────────────
echo.
echo.
..\adb\adb shell dumpsys window windows | findstr "Current"
echo.
echo.
pause
0.bat
