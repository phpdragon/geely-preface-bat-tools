@echo off
setlocal enabledelayedexpansion

title ���������� - ��ԭ������Ƶ
color 2F

set animation_file_name=startanimation.mp4
set local_animation_file=..\media\%animation_file_name%
set animation_file=/system/media/%animation_file_name%
set animation_file_bak=%animation_file%.bak

set cmd=..\adb\adb shell "ls %animation_file_bak%|wc -l"
for /f "delims=" %%i in ('!cmd!') do (
    set "file_exist=%%i"
)
IF %file_exist% gtr 0 (
    goto restore_media
) ELSE (
    echo ������Ƶ�����ļ�������: %animation_file_bak%���޷���ԭ������
    pause
    exit
)

:restore_media
echo.
echo ��ʼ��ԭ������Ƶ...
@echo on
..\adb\adb root
..\adb\adb remount
..\adb\adb shell "if [ -f \"%animation_file_bak%\" ]; then rm -f %animation_file%; cp -f %animation_file_bak% %animation_file%; fi"
..\adb\adb shell chmod 0755 %animation_file%
@echo off
echo.
echo ������Ƶ��ԭ�ɹ���
echo.
Choice /C 123 /M "[1]����������Ч�� [2]������һ���˵� [3]�˳�:"
if %ErrorLevel%==1 ..\adb\adb shell reboot
if %ErrorLevel%==2 c.bat
if %ErrorLevel%==3 exit
