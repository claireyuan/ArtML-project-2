#!/bin/bash
shuf -n 10 fishes.txt > sources.txt;
for f in $(cat sources.txt);
do
  wget -t 2 --timeout=20 "$f"
done
