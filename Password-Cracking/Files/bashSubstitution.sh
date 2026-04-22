#!/bin/bash
# Script designed to substitute leet speack characters in every possible combination

subs=("se3" "sa@" "so0" "si1" "ss$" "sS5" "sA4" "sI1")

for i in $(seq 1 255); do
    rule=""
    for j in 0 1 2 3 4 5 6 7; do
        if (( i & (1 << j) )); then
            rule="$rule ${subs[$j]}"
        fi
    done
    for prefix in "l" "u" "c"; do
        echo "${prefix}${rule}" >> bashSet.txt
        echo "${prefix}${rule} Az\"[0-9][0-9][0-9][0-9]\"" >> bashSet.txt
    done
done
