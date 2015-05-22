#!/bin/bash

play=`mocp -i | grep SongTitle | cut -c 12-` 
artist=`mocp -i | grep Artist | cut -c 9-`

t update "#NowPlaying $artist - $play"
