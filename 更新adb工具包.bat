@echo off
::下载地址
::Windows版本：https://dl.google.com/android/repository/platform-tools-latest-windows.zip
::Mac版本：https://dl.google.com/android/repository/platform-tools-latest-windows.zip
::Linux版本：https://dl.google.com/android/repository/platform-tools-latest-linux.zip

echo.
echo 开始下载最新版本adb工具箱...
echo.
curl -s https://dl.google.com/android/repository/platform-tools-latest-windows.zip -o ./adb.zip

echo.
IF EXIST "./adb.zip" (
    echo 开始删除旧版本adb工具箱文件夹...
    echo.
    rmdir /s /q ".\adb"
    :: 检查rmdir命令是否成功
    if %errorlevel% equ 0 (
        echo [.\adb] Directory and its contents have been deleted successfully.
    ) else (
        echo Failed to delete [.\adb] directory or its contents.
    )
    
    echo.
    echo 解压adb工具箱...
    .\tool\unzip -j -q -o ./adb.zip -d .\adb
    del /q "./adb.zip"
    echo adb工具箱更新至最新版本成功！！！
) ELSE (
    echo 下载最新版本adb工具箱失败！！！
)

echo.
pause
