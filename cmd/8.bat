@echo off
:again8
title ���������� - ж��Ӧ��
color 2F

echo.
echo ж��ǰ��֪��Ӧ�����ƣ���ͨ���˵�[�˵�5-����Ӧ�ð�]��ȡӦ�ð�����
echo ��ж�ظߵµ�ͼ: com.autonavi.amapauto
echo ��������������������������������������������������������������������������������������������������������������������������������

set /p package=��������Ҫж�ص�Ӧ�ð�����:

if defined package (
    ..\adb\adb uninstall %package%
) ELSE (
    goto again8
)
set package=

echo.
pause

0.bat
