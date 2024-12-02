@echo off
:again
title 星瑞车机工具箱
color 2F
cls

echo ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
echo ┃     本程序用以操作21款星瑞车机系统                               ┃
echo ┃ 请使用时务必仔细阅读使用说明，如因此造成的硬件损坏由使用者承担！ ┃
echo ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
echo ┌──────────────────────────使用说明及注意事项──────────────────────────────┐
echo │本程序使用前，请先打开车机调试模式，WIFI调试要保证电脑与车机在同一个网络。│
echo │执行其它命令前必须先连接车机,车机为连接状态不需要重复连接。               │
echo │USB线连接车机，无需执行连接车机操作，但要保证连接正常，请先查看连接。     │
echo │          免费供使用，请勿用于商业用途                                    │
echo │教程中所使用的APK均已集合到APP文件夹下，可以直接使用包含高德7.5.0、X浏览器│
echo │、ES文件浏览器等                                                          │
echo └──────────────────────────────────────────────────────────────────────────┘
echo ┌───────────────────────────────────操作菜单──────────────────────────────────────┐
echo │[1]ping车机网络 [2]连接车机WIFI调试模式 [3]查看车机连接状态 [4]进入车机命令控制台│
echo │                                                                                 │
echo │[5]查看车机应用信息 [6]安装应用 [7]获取车机屏幕当前软件启动位置 [8]卸载应用      │
echo │                                                                                 │
echo │[9]重启车机 [A]截屏 [B]文件传输 [C]更换开机动画 [D]车机ROOT [E]重启adb服务       │
echo │                                                                                 │
echo │[0]退出                                                                          │
echo └─────────────────────────────────────────────────────────────────────────────────┘
echo.
Choice /C 0123456789abcde /M "请输入菜单编号:"
if %ErrorLevel%==1 exit
if %ErrorLevel%==2 1.bat
if %ErrorLevel%==3 2.bat
if %ErrorLevel%==4 3.bat
if %ErrorLevel%==5 start 4.bat
if %ErrorLevel%==6 start 5.bat
if %ErrorLevel%==7 6.bat
if %ErrorLevel%==8 7.bat
if %ErrorLevel%==9 8.bat
if %ErrorLevel%==10 ..\adb\adb shell reboot
if %ErrorLevel%==11 a.bat
if %ErrorLevel%==12 b.bat
if %ErrorLevel%==13 c.bat
if %ErrorLevel%==14 start root\root.bat
if %ErrorLevel%==15 e.bat

goto :again
