.\ffmpeg -f gdigrab -framerate ntsc -offset_x 10 -offset_y 20 -video_size 640x480 -show_region 1 -i desktop 123.mp4

- [基於FFmpeg實現屏幕錄製 - 台部落](https://www.twblogs.net/a/5efe7fcc99927402d4fc9ee2)
ffmpeg -framerate 30 -f gdigrab -i desktop -c:v libx264rgb -crf 0 -preset ultrafast output.mkv
或者
ffmpeg -framerate 30 -f gdigrab -i desktop -c:v libx264rgb -preset:v ultrafast -tune:v zerolatency output.mkv
