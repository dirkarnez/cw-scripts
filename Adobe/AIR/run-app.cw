@echo off

@REM AIR app should be installed in Windows Sandbox and copy the installation file away, then run this script with a portable AIR runtime (which is actually AIR SDK, and can be downloaded on https://airsdk.harman.com/api/versions/50.1.1.2/sdks/AIRSDK_Windows.zip?id=23603)
%USERPROFILE%\Downloads\AIRSDK_Windows\bin\adl.exe "%~dp0app\META-INF\AIR\application.xml" "%~dp0app"

pause
