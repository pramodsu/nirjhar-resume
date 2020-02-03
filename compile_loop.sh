#! /bin/bash
# run make when the files change
while true; do
    make
    inotifywait -e modify *.tex Makefile
done

