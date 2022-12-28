ffmpeg -i "a.wav" -i "b.wav" -filter_complex amix=inputs=2:duration=first:dropout_transition=3:normalize=0 "ffmpeg-sum.wav" // exact the same as DAW export / DAW master bus
ffmpeg -i "a.wav" -i "b.wav" -filter_complex amix=inputs=2:duration=first:dropout_transition=3 "ffmpeg-sum.wav" // with :normalize=0, ffmpeg will auto unclip the sum

- inputs must be specified and be the number of "-i"
