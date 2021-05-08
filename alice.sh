#!/bin/bash
tail -n +2 ./logs/alice/january.csv | cut -d ',' -f3
while IFS=, read -r hours; do
sum=$(( hours+$sum ))
echo $sum
done
