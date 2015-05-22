#!/bin/bash

# moc-twitter-sharing 0.1
# By Juanjo Salvador Piedra (aka SrFreak)
# for MOC Player community. Written in Shell.
#
# Website: http://juanjosalvador.github.io/
# Repository and how-to: https://github.com/JuanjoSalvador/moc-twitter-sharing

play=`mocp -i | grep SongTitle | cut -c 12-` 
artist=`mocp -i | grep Artist | cut -c 9-`

if [[ -z "$play" || -z "$artist" ]]; then

	echo "Null Song title: Cannot found song title"

else

	t update "#NowPlaying $artist - $play"

fi
