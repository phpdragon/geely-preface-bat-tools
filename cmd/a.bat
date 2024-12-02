@echo off
:again10
title 车机工具箱 - 截屏
color 2F

echo.
echo ┌─────────使用说明及注意事项─────────┐
echo │截屏保存在img文件夹                 │
echo └────────────────────────────────────┘
echo ┌──────────────────────────操作菜单─────────────────────────────┐
echo │[1]截屏 [2]查看 [3]删除 [4]打开文件夹 [5]反回上一级菜单 [0]退出│
echo └───────────────────────────────────────────────────────────────┘
echo ─────────────────────────────────────────────────────────────────
echo.
Choice /C 012345 /M "请输入菜单编号:"
echo.
if %ErrorLevel%==1 exit
if %ErrorLevel%==2 a_1.bat
if %ErrorLevel%==3 start ..\img\%file_path%
if %ErrorLevel%==4 IF EXIST "..\img\%file_path%" (del -q ..\img\%file_path%) ELSE (echo.)
if %ErrorLevel%==5 start ..\img\
if %ErrorLevel%==6 0.bat
echo.
goto again10
