@echo off
echo x=msgbox("A critical system error has occurred. Please restart your application.", 16, "Windows Error") > "%temp%\err.vbs"
cscript //nologo "%temp%\err.vbs"
del "%temp%\err.vbs"
