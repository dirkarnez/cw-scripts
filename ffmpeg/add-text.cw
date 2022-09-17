./ffmpeg -i "300643122_558626872721612_5425900042078477298_n.mp4" -vf "drawtext=fontfile=impact.ttf:text='When you wait too long and
get very bored on the street':fontcolor=white:fontsize=40:box=1:boxcolor=black@0.5:boxborderw=5:x=(w-text_w)/2:y=80" -codec:a copy "indian-meme.mp4"

// this should be run in bash because between "and" abd "get" hides a "\n" literal
