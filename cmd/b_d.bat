@echo off
setlocal enabledelayedexpansion
:again11_2
title 车机工具箱 - 下载文件
color 2F

echo.
set /p sourceDir=请输入车机下载文件路径，例如 /sdcard/baidu.apk :
echo.
IF defined sourceDir (
    goto check_path_sd
) ELSE (
    goto again11_2
)

:check_path_sd
set cmd=..\adb\adb shell "ls %sourceDir%|wc -l"
for /f "delims=" %%i in ('!cmd!') do (
    set "file_exist=%%i"
)
IF %file_exist% gtr 0 (
    goto again11_2input2
) ELSE (
    echo 请输入正确的车机下载文件路径！！！
    pause
    goto again11_2
)

:again11_2input2
set /p targetDir=请输入本地下载文件夹路径，例如 D:\app :
echo.
IF defined targetDir (
    goto check_path_dest
) ELSE (
    goto again11_2input2
)

:check_path_dest
IF EXIST "%targetDir%" (
    goto pull_file
) ELSE (
    echo 请输入正确的本地下载文件夹路径！！！
    pause
    goto again11_2input2
)

:pull_file
echo 开始下载车机文件...
@echo on
..\adb\adb pull %sourceDir% %targetDir%
@echo off
echo.
echo 下载车机文件完毕
set sourceDir=
set targetDir=
echo.
pause
b.bat
