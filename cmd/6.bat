@echo off
:again6
title ���������� - Ӧ�ð�װ
color 2F
echo.
echo ������������������������������ʹ��˵����ע�����������������������������������
echo ��APP���apk�����õ�app�ļ������ٽ��а�װ������  ��
echo ���Զ���װģʽ���Զ���װapp�ļ���������Ӧ�á�    ��
echo ���ֶ���װ��ʽ��Ҫ�ֶ�����apk�ļ������� kugou.apk��
echo ������Ͱ�װʱ��Ƚϳ������Եȴ���               ��
echo ��������������������������������������������������������������������������������������������������
echo.
pause
echo.
echo ��ʼ�Զ��ϴ�appĿ¼�µ�apkӦ�ð�...
echo.
..\adb\adb push ..\mtk-su /data/local/tmp/
..\adb\adb shell chmod 755 /data/local/tmp/mtk-su
for %%i in (..\app\*) do (
    ..\adb\adb push %%i /sdcard/
)
echo.
echo �ϴ�appӦ�ð����,���ֶ�ִ��shell���װ��
echo.
echo ���������������������������ֶ���װapk�����������������������������
echo �� cd /data/local/tmp                     ��
echo �� ./mtk-su                               ��
echo �� mount -r -w -o remount -t ext4 /system ��
echo �� mv /sdcard/*.apk /data/app/            ��
echo �� chown system:system /data/app/*.apk    ��
echo �� chmod 755 /data/app/*.apk              ��
echo �� reboot                                 ��
echo ������������������������������������������������������������������������������������
echo.
..\adb\adb shell
0.bat
