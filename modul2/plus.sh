#!/bin/bash

sum=0

while true; do
    read -p "Masukkan angka: " num

    if [[ num -lt 0 ]]; then
        break
    fi

    ((sum += num))
done

echo "Jumlah semua angka: $sum"