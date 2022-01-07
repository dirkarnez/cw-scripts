@echo off
set /p url="Enter input file name / full path: "
set /p filename="Enter output file name / full path: "
set /p start="Start: "
set /p end="End: "
ffmpeg -i "%url%" -ss %start% -to %end% "%filename%"
pause

 