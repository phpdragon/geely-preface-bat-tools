@echo off
setlocal enabledelayedexpansion
:again11_1
title 车机工具箱 - 上传文件
color 2F

echo.
set /p targetDir=请输入车机文件夹路径，例如 /sdcard/ :
echo.
IF defined targetDir (
    goto check_path_td
) ELSE (
    goto again11_1
)

:check_path_td
set cmd=..\adb\adb shell "if [ -d \"%targetDir%\" ]; then echo 1;else echo 0; fi"
for /f "delims=" %%i in ('!cmd!') do (
    set "file_exist=%%i"
)
IF %file_exist% gtr 0 (
    goto again11_input2
) ELSE (
    echo 请输入正确的车机文件夹路径！！！
    pause
    goto again11_1
)

:again11_input2
set /p sourceDir=请输入本地上传文件路径，例如 D:\app\baidu.apk :
echo.
IF defined sourceDir (
    goto check_path
) ELSE (
    goto again11_input2
)

:check_path
IF EXIST "%sourceDir%" (
    goto push_file
) ELSE (
    echo 请输入正确的本地上传文件路径！！！
    pause
    goto again11_input2
)

:push_file
echo 开始上传本地文件...
@echo on
..\adb\adb push %sourceDir% %targetDir%
@echo off
echo.
echo 上传本地文件完毕
set sourceDir=
set targetDir=
echo.
pause
b.bat
