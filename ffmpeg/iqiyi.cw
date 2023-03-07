@echo off
set /p url="Enter input file name / full path: "
set /p filename="Enter output file name / full path: "
%~dp0\ffmpeg -http_persistent 0 -protocol_whitelist file,http,https,tcp,tls,crypto -i "%url%" "%filename%"
pause
