@echo off
::���ص�ַ
::Windows�汾��https://dl.google.com/android/repository/platform-tools-latest-windows.zip
::Mac�汾��https://dl.google.com/android/repository/platform-tools-latest-windows.zip
::Linux�汾��https://dl.google.com/android/repository/platform-tools-latest-linux.zip

echo.
echo ��ʼ�������°汾adb������...
echo.
curl -s https://dl.google.com/android/repository/platform-tools-latest-windows.zip -o ./adb.zip

echo.
IF EXIST "./adb.zip" (
    echo ��ʼɾ���ɰ汾adb�������ļ���...
    echo.
    rmdir /s /q ".\adb"
    :: ���rmdir�����Ƿ�ɹ�
    if %errorlevel% equ 0 (
        echo [.\adb] Directory and its contents have been deleted successfully.
    ) else (
        echo Failed to delete [.\adb] directory or its contents.
    )
    
    echo.
    echo ��ѹadb������...
    .\tool\unzip -j -q -o ./adb.zip -d .\adb
    del /q "./adb.zip"
    echo adb��������������°汾�ɹ�������
) ELSE (
    echo �������°汾adb������ʧ�ܣ�����
)

echo.
pause
