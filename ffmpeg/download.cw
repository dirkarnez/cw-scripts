ffmpeg -i "%url%" -c copy "%filename%"
or
.\ffmpeg.exe -headers "referer: " -headers "Host: " -headers "User-Agent: " -i "%url%" -c copy "%filename%"
