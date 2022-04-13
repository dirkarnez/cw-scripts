@REM  -L, --location      Follow redirects
@REM  -J, --remote-header-name Use the header-provided filename
@REM  -O, --remote-name   Write output to a file named as the remote file

[List of `curl` options](https://gist.github.com/eneko/dc2d8edd9a4b25c5b0725dd123f98b10)

.\curl　https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png --output googlelogo_color_92x30dp.png
or
.\curl　https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png -L -O -J
