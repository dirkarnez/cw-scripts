ffmpeg -i input.mp4 -i watermark.jpg -filter_complex "overlay=25:25" -c:a copy output.mp4
