@echo off
:again10
title ���������� - ����
color 2F

echo.
echo ��������������������ʹ��˵����ע�����������������������
echo ������������img�ļ���                 ��
echo ����������������������������������������������������������������������������
echo �����������������������������������������������������������˵�������������������������������������������������������������
echo ��[1]���� [2]�鿴 [3]ɾ�� [4]���ļ��� [5]������һ���˵� [0]�˳���
echo ����������������������������������������������������������������������������������������������������������������������������������
echo ����������������������������������������������������������������������������������������������������������������������������������
echo.
Choice /C 012345 /M "������˵����:"
echo.
if %ErrorLevel%==1 exit
if %ErrorLevel%==2 a_1.bat
if %ErrorLevel%==3 start ..\img\%file_path%
if %ErrorLevel%==4 IF EXIST "..\img\%file_path%" (del -q ..\img\%file_path%) ELSE (echo.)
if %ErrorLevel%==5 start ..\img\
if %ErrorLevel%==6 0.bat
echo.
goto again10