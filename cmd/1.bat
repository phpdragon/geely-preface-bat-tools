@echo off
:again1
title ���������� - ����ͨѶ����
color 2F

echo ��ǰ����ip:
ipconfig|findstr /i ipv4

echo.
set /p ipaddr=�����복��IP:

if defined ipaddr (
    ping %ipaddr%
) ELSE (
    goto again1
)
set ipaddr=
echo.
pause
0.bat
