@echo off

SET SCRIPT_DIR=%~dp0
SET BSS_DIR=%1
SET env_file=%SCRIPT_DIR%\env_win
source "%env_file%"
"%SCRIPT_DIR%\%VIRTUAL_ENV%\Scripts\activate.bat"

cd %1
py "%SCRIPT_DIR%\converter.py" %1
