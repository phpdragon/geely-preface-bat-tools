@echo off
:again11
title 车机工具箱 - 文件传输
color 2F
echo.
echo ┌─────────────────────操作菜单─────────────────────┐
echo │[1]上传文件 [2]下载文件  [3]反回上一级菜单 [0]退出│
echo └──────────────────────────────────────────────────┘
echo ────────────────────────────────────────────────────
echo.
Choice /C 0123 /M "请输入菜单编号:"
if %ErrorLevel%==1 exit
if %ErrorLevel%==2 b_u.bat
if %ErrorLevel%==3 b_d.bat
if %ErrorLevel%==4 0.bat

goto again11
