:cHeck
@ECHO off
	tasklist /FI "IMAGENAME eq taskmgr.exe" 2>NUL | find /I /N "taskmgr.exe">NUL
	if "%ERRORLEVEL%"=="0" echo Program is running. && timeout /t 5 && goto cHeck
	if "%ERRORLEVEL%"=="1" echo Program is Not running. && timeout /t 5 && goto sTart
:sTart
@echo off
	start taskmgr.exe
	echo "Process Start Complete.!"
	timeout /t 5
	goto cHeck

