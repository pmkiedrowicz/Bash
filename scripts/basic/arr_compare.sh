#!/bin/bash
#Simple script of comparing 2 arrays and print difference elements
#First create three arrays with elements to be compared
a=(1 2 4 7 8 9)
b=(1 5 6 8 0 10)
c=(12 10 7 5 2)
#For each 'x' element in array 'b'
for x in "${a[@]}"; do
#For each 'y' element in array 'a'
    for y in "${b[@]}"; do
#If value 'x' equals 'y' then assign value to new array 'z'
#z[${#z[@]}] = $x stands for adding value to specific index
#${#z[@]} alone stands for length of the elements of array, it's '0' by default
        if [ $x = $y ]; then
            z[${#z[@]}]=$x
        fi
    done
done
