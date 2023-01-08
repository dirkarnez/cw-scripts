@echo off 
@REM iTunes' standard setting is identical to Quicktime's ABR setting at medium encoding quality.
@REM iTunes' VBR setting is identical to Quicktime's VBR constrained setting at medium encoding quality.
@REM iTunes Plus is identical to Quicktime's VBR constrained 256kbit/s setting at maximum encoding quality.
@REM https://hydrogenaud.io/index.php/topic,70405.0.html
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
