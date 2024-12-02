@echo off
:again6
title 车机工具箱 - 应用安装
color 2F
echo.
echo ┌──────────────使用说明及注意事项───────────────┐
echo │APP软件apk包放置到app文件夹下再进行安装操作。  │
echo │自动安装模式会自动安装app文件夹下所有应用。    │
echo │手动安装方式需要手动输入apk文件名，如 kugou.apk│
echo │传输和安装时间比较长，耐性等待！               │
echo └───────────────────────────────────────────────┘
echo.
pause
echo.
echo 开始自动上传app目录下的apk应用包...
echo.
..\adb\adb push ..\mtk-su /data/local/tmp/
..\adb\adb shell chmod 755 /data/local/tmp/mtk-su
for %%i in (..\app\*) do (
    ..\adb\adb push %%i /sdcard/
)
echo.
echo 上传app应用包完毕,请手动执行shell命令安装。
echo.
echo ┌────────────手动安装apk命令─────────────┐
echo │ cd /data/local/tmp                     │
echo │ ./mtk-su                               │
echo │ mount -r -w -o remount -t ext4 /system │
echo │ mv /sdcard/*.apk /data/app/            │
echo │ chown system:system /data/app/*.apk    │
echo │ chmod 755 /data/app/*.apk              │
echo │ reboot                                 │
echo └────────────────────────────────────────┘
echo.
..\adb\adb shell
0.bat
