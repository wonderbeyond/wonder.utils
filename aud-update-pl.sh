#!/bin/bash
# Author: Wonder
# Description: Update default playlist of audacious.

# 清空默认列表
audtool2 --playlist-clear

# 把 music 目录的所有音乐更新到默认列表
cd ~/music
for i in *.mp3; do audtool2 --playlist-addurl "$i"; done

