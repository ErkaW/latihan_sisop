#!/bin/bash

read -p "Masukkan angka pertama: " angka1
read -p "Masukkan angka kedua: " angka2
read -p "Masukkan tanda operasi (t: tambah, k: kurang, b: bagi, x: kali): " tanda

case $tanda in
    t)
        hasil=$((angka1 + angka2))
        ;;
    k)
        hasil=$((angka1 - angka2))
        ;;
    b)
        hasil=$((angka1 / angka2))
        ;;
    x)
        hasil=$((angka1 * angka2))
        ;;
    *)
        echo "Tanda operasi tidak valid"
        exit 1
        ;;
esac

echo "Hasil: $hasil"