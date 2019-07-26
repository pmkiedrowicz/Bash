#!/bin/bash
#Simple script with basic math operations
A=15
B=22
C=7
#Using $(()) to do basic math, its assign to variable 'SUM'
#Varialble 'A' is added to double varialbe 'B',
#then substracted from variable 'C'
SUM=$(($A + 2 * $B - 3 * $C))
#prints variable 'SUM'
echo "$SUM"
