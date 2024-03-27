#!/bin/bash

n=1
for dat in $(ls); do 
    ext="${dat##*.}"
    if [ -f "$dat" ]; then
        echo "File ke $n adalah $dat (tipe: file $ext)"
    elif [ -d "$dat" ]; then
        echo "File ke $n adalah $dat (tipe: direktori)"
    else
        echo "File ke $n adalah $dat (tipe: lainnya)"
    fi
    n=$((n+1))
done