@echo off
setlocal enabledelayedexpansion
:again11_2
title ���������� - �����ļ�
color 2F

echo.
set /p sourceDir=�����복�������ļ�·�������� /sdcard/baidu.apk :
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
    echo ��������ȷ�ĳ��������ļ�·��������
    pause
    goto again11_2
)

:again11_2input2
set /p targetDir=�����뱾�������ļ���·�������� D:\app :
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
    echo ��������ȷ�ı��������ļ���·��������
    pause
    goto again11_2input2
)

:pull_file
echo ��ʼ���س����ļ�...
@echo on
..\adb\adb pull %sourceDir% %targetDir%
@echo off
echo.
echo ���س����ļ����
set sourceDir=
set targetDir=
echo.
pause
b.bat
