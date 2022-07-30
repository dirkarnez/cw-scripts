@REM no docker is needed. here is the sample code for making a 6(columns)x4(rows) collage by combining 4 combined 3(columns)x2(rows) collage
@echo off
docker run --rm -it -v "%cd%:/home/" jrottenberg/ffmpeg -y ^
-i "/home/1.jpg" ^
-i "/home/2.jpg" ^
-i "/home/3.jpg" ^
-i "/home/4.jpg" ^
-i "/home/5.jpg" ^
-i "/home/6.jpg" ^
-filter_complex "[0:v][1:v][2:v]hstack=inputs=3[top];[3:v][4:v][5:v]hstack=inputs=3[bottom];[top][bottom]vstack=inputs=2[v]" -map "[v]" "/home/output1.jpg"

docker run --rm -it -v "%cd%:/home/" jrottenberg/ffmpeg -y ^
-i "/home/7.jpg" ^
-i "/home/8.jpg" ^
-i "/home/9.jpg" ^
-i "/home/10.jpg" ^
-i "/home/11.jpg" ^
-i "/home/12.jpg" ^
-filter_complex "[0:v][1:v][2:v]hstack=inputs=3[top];[3:v][4:v][5:v]hstack=inputs=3[bottom];[top][bottom]vstack=inputs=2[v]" -map "[v]" "/home/output2.jpg"

docker run --rm -it -v "%cd%:/home/" jrottenberg/ffmpeg -y ^
-i "/home/13.jpg" ^
-i "/home/14.jpg" ^
-i "/home/15.jpg" ^
-i "/home/16.jpg" ^
-i "/home/17.jpg" ^
-i "/home/18.jpg" ^
-filter_complex "[0:v][1:v][2:v]hstack=inputs=3[top];[3:v][4:v][5:v]hstack=inputs=3[bottom];[top][bottom]vstack=inputs=2[v]" -map "[v]" "/home/output3.jpg"

docker run --rm -it -v "%cd%:/home/" jrottenberg/ffmpeg -y ^
-i "/home/19.jpg" ^
-i "/home/20.jpg" ^
-i "/home/21.jpg" ^
-i "/home/22.jpg" ^
-i "/home/23.jpg" ^
-i "/home/24.jpg" ^
-filter_complex "[0:v][1:v][2:v]hstack=inputs=3[top];[3:v][4:v][5:v]hstack=inputs=3[bottom];[top][bottom]vstack=inputs=2[v]" -map "[v]" "/home/output4.jpg"


docker run --rm -it -v "%cd%:/home/" jrottenberg/ffmpeg -y ^
-i "/home/output1.jpg" ^
-i "/home/output2.jpg" ^
-i "/home/output3.jpg" ^
-i "/home/output4.jpg" ^
-filter_complex "[0:v][1:v]hstack=inputs=2[top];[2:v][3:v]hstack=inputs=2[bottom];[top][bottom]vstack=inputs=2[v]" -map "[v]" "/home/output.jpg"

pause

