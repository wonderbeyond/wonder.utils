#!/bin/bash
#用mplayer来播放我的音乐
  
MUSIC_DIR=~/Music

echo "Mplayer My Music..."
mplayer -shuffle -loop 0 $MUSIC_DIR/*
