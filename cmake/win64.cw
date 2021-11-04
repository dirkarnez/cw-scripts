cmake -G "Visual Studio 16 2019" -A x64
set PATH=%PATH%;your_mingw_folder\bin
cmake -G"MinGW Makefiles" ./build
