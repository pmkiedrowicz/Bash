#!/bin/bash
#Script provide return a factorial of number
#Script also checks if this is a integer
#Basic syntax called when params are wrong
syntax() {
echo "Syntax: ./factorial 25"
}
#Main function for factoring
calc_factorial() {
#If value equals 0 or 1, then finish program with number 1
	if [ $1 -eq 0 -o $1 -eq 1 ]
	then 
		echo 1
#Otherwise continue factoring
	else
		local var=$(( $1 - 1 ))
		local res=$(calc_factorial $var)
		echo $(( $res * $1 ))
	fi
}
#Main program starts here. At first step check 
#if given integer is a Integer e.g. 0, 1, 2,...
#If return true, then create variable $factorial 
#and get the value of calc_factorial() $1
if [[ $1 =~ ^[0-9]+$ ]]; then
	factorial=$(calc_factorial $1)
	echo "Factorial of number $1 is: $factorial"
#If it's false, then call syntax() method
else
	syntax
fi
