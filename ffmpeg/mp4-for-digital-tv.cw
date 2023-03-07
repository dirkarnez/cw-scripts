@echo off
set /p url="Enter input file name / full path: "
set /p filename="Enter output file name / full path: "
ffmpeg -i "%url%" -c:v libx264 -c:a aac "%filename%"
pause
