@echo off
setlocal enabledelayedexpansion
:again11_1
title ���������� - �ϴ��ļ�
color 2F

echo.
set /p targetDir=�����복���ļ���·�������� /sdcard/ :
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
    echo ��������ȷ�ĳ����ļ���·��������
    pause
    goto again11_1
)

:again11_input2
set /p sourceDir=�����뱾���ϴ��ļ�·�������� D:\app\baidu.apk :
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
    echo ��������ȷ�ı����ϴ��ļ�·��������
    pause
    goto again11_input2
)

:push_file
echo ��ʼ�ϴ������ļ�...
@echo on
..\adb\adb push %sourceDir% %targetDir%
@echo off
echo.
echo �ϴ������ļ����
set sourceDir=
set targetDir=
echo.
pause
b.bat
