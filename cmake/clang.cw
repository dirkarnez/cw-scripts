REM run as Administrator
cd /d %~dp0
SET PATH=%USERPROFILE%\Downloads\PortableGit\bin;%USERPROFILE%\Downloads\mingw64\bin;%USERPROFILE%\Downloads\cmake-3.22.0-rc1-windows-x86_64\bin;
cmake.exe -G"MinGW Makefiles" -DCMAKE_CXX_COMPILER="C:/Users/Administrator/Downloads/LLVM-13.0.0-win64/bin/clang++.exe" -DCMAKE_C_COMPILER="C:/Users/Administrator/Downloads/LLVM-13.0.0-win64/bin/clang.exe" -B./build
cd build
mingw32-make.exe
pause
