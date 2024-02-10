@echo off
REG QUERY "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAcrylicOpacity" >nul
IF %errorlevel%==0 (
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAcrylicOpacity" /f
) ELSE (
REG ADD "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAcrylicOpacity" /t REG_DWORD /d 0 /f
) 
taskkill /f /im explorer.exe
start explorer.exe