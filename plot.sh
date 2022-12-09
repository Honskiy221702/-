#!/bin/bash


result=$(grep -oE '\b[Vv]+[A-Za-z]*' $1*.txt)
echo "$result" >> $1result.txt
