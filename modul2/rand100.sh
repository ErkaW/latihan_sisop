#!/bin/bash

display_help() {
    echo "Penggunaan: $0 [jumlah_baris]"
    echo "Menghasilkan angka acak (1 - 100) dalam jumlah baris yang ditentukan."
    echo
    echo "Argumen:"
    echo "  jumlah_baris   Jumlah baris yang akan dihasilkan (opsional, default: 10)"
    echo "  --help, -h     Menampilkan bantuan ini"
    echo
    echo "Contoh:"
    echo "  $0 10"
}

if [[ $1 == "--help" || $1 == "-h" ]]; then
    display_help
    exit 0
fi

if [[ -n $1 ]]; then
    jumlah_baris=$1
else
    jumlah_baris=10
fi

for jumlah_baris in $(seq $jumlah_baris); do
    echo $((RANDOM % 100 + 1))
done

echo $((RANDOM % 100 + 1 - 100))