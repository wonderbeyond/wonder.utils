#!/bin/bash
# Author: Wonder
# Description: 实现星际译王MP3发音, 没有MP3时选择wav
# E-mail: wonderbeyond@gmail.com
# Dependency: sox

# Set your MP3 audio directory here
AudioDir="/home/wonder/data/星际译王/WyabdcRealPeopleTTS.mp3"
#AudioDir="/home/wonder/data/星际译王/OtdRealPeopleTTS.mp3"


Word="$1"
Head_letter=`expr substr ${Word} 1 1`
Sub_dir=$(echo $Head_letter|tr A-Z a-z)
Audio_file=${AudioDir}/${Sub_dir}/"${1}.mp3"
echo play ${Audio_file}
[ ! -f "${Audio_file}" ] && Audio_file="${AudioDir}/${Sub_dir}/${1}.wav"

if [ -f "${Audio_file}" ]; then
    exec play ${Audio_file}
else
    exec espeak ${Word}
fi
