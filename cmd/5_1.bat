@echo off
:again_5_1
title ���������� - ģ������Ӧ�ð�
color 2F

echo.
set /p package=��������������Ӧ�ð�����(֧��ģ��ƥ��):
echo.
IF defined package (
    ..\adb\adb shell pm list packages -f %package%
) ELSE (
    goto again_5_1
)
set package=
echo.
pause

5.bat
