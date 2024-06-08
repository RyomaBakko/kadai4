#!/bin/bash

function error_exit {
    echo "2つの整数を入力してください。"
    echo "入力は整数でなければなりません。"
    exit 1
}


if [ "$#" -ne 2 ]; then
    error_exit
fi


if ! [[ "$1" =~ ^[0-9]+$ ]] || ! [[ "$2" =~ ^[0-9]+$ ]]; then
    error_exit
fi


num1=$1
num2=$2


function gcd() {
    a=$1
    b=$2
    while [ "$b" -ne 0 ]; do
        temp=$b
        b=$((a % b))
        a=$temp
    done
    echo "$a"
}


gcd_result=$(gcd "$num1" "$num2")
echo "入力1と入力2の最大公約数: $gcd_result"
