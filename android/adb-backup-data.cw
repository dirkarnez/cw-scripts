@echo off

set PATH=^
%USERPROFILE%\Downloads\android-studio-2022.1.1.21-windows\android-studio\jbr\bin;

@REM https://gist.github.com/nstarke/615ca3603fdded8aee47fab6f4917826

@REM connect android (requires android debug mode): adb devices
@REM list all installed apps: adb shell pm list packages -f -3
@REM select the application: adb backup -apk org.xxx.xxx -f backup.adb

@REM https://sourceforge.net/projects/android-backup-processor/
java -jar %USERPROFILE%\Downloads\android-backup-tookit-20221220\android-backup-tookit\android-backup-processor\executable\abp.jar unpack backup.adb backup.tar

pause
