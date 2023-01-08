@echo off 
@REM Quicktime's VBR constrained 256kbit/s setting at maximum encoding quality.
@REM set PATH=%USERPROFILE%\Downloads\iTunes 12.4.1.6 Portable\App\Common\AppleApplicationSupport64
@REM set PATH=%USERPROFILE%\Downloads\itunes-portable-v12.12.6.1
@REM .\qaac64.exe --formats
@REM pause

.\qaac64.exe --verbose --ignorelength -v256 -q2 --no-smart-padding --rate=44100 --no-optimize --no-smart-padding "test.wav" -o "test.m4a"
pause

@REM Notes
@REM - every itunes version works differently
@REM - this script is wip(although it can produce aac file), but the aac produced is not bit-identical to itunes-produced (alignment, supporting itunes version, fingerprint metadata, etc...)
