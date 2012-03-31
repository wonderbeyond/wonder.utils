#!/bin/bash

if [ -n "$1" ]; then
    [ ! -d "$1" ] && echo "$1" is not a directory && exit 1
    op_dir="$1"
else
    echo "convert encoding of file names in a directory to current locale"
    echo "usage: $0 op_dir"
    exit 1
fi

for i in "$op_dir"/*
do
    locale_encoding=`echo "$i"|enconv`
    echo mv "$i" "$locale_encoding"
    mv "$i" "$locale_encoding"
done
