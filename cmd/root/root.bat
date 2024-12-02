@echo off
title 车机工具箱 - 车机ROOT         BY 汽车之家[岁月静好_56] V1
color 2F
cls

echo             ┏━━━━━━━━━━━━━━━━━━━━━━━━━━┓
echo             ┃       本程序由汽车之家 [岁月静好_56] 编写          ┃
echo             ┃      如有疑问，欢迎到论坛留言，大家相互学习 ！     ┃
echo             ┗━━━━━━━━━━━━━━━━━━━━━━━━━━┛
echo ┌──────────────使用说明及注意事项──────────────┐
echo │车机ROOT风险极大，后果自行承担，平台和作者不承受任何责任。                │
echo │继续执行表示接受条款，否则退出操作。                                      │
echo │                                                                          │
echo │  【第一次root选择1操作】                                                 │
echo │  【车机重启后要执行2操作才有root权限】此步可以在手机adb执行下面命令代替：│
echo │   /system/xbin/daemonsu --auto-daemon                                    │
echo │                                                                          │
echo └─────────────────────────────────────┘
echo ┌─────────────────操作菜单────────────────┐
echo │[1]ROOT车机  [2]车机每次重启后获取root权限  [0]退出                       │
echo └─────────────────────────────────────┘
echo ───────────────────────────────────────
echo.
Choice /C 012 /M "请输入菜单编号:"
if %ErrorLevel%==1 exit
if %ErrorLevel%==2 start root\root_1.bat
if %ErrorLevel%==3 ..\..\adb\adb shell /system/xbin/daemonsu --auto-daemon
