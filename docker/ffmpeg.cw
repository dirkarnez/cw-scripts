@echo off
set /p url="Enter input file name / full path: "
set /p filename="Enter output file name / full path: "
docker run --rm -it linuxserver/ffmpeg -i "%url%" "%filename%"
pause
