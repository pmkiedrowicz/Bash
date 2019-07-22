#!/bin/bash
#Script provide return a factorial of number
#Script also checks if this is a integer
#Basic syntax called when params are wrong
syntax() {
echo "Syntax: 25"
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
#Main program starts here. At first step ask for a number
#If its 'q' program just finish,else if is not a number it continue
#to last else statement, which print corrent syntax to user.
#Else if user input contans number the main loop will continue.
#If input is a number greater than 20
#program prints simple message to correct number in range 0-20.
#If input is in range 0-20 (0,20 within) it sends $REPLY to the
#factorial() method. Output is saved in $factorial
#At end program prints a factorial number.
while true
do
read -p "Type a number to factory or press 'q' to quit: " REPLY
if [ $REPLY = "q" ] ; then
    break
elif [[ echo $REPLY =~ ^[0-9]+$ ]]; then
    if [ $REPLY -gt 20 ]; then
	echo "This number is too huge, please type in range 0 to 20:"
	elif [ $REPLY -le 20 -a $REPLY -ge 0 ]; then
	factorial=$(calc_factorial $REPLY)
	echo "Factorial of number $REPLY is: $factorial"
	fi
#If it's false, then call syntax() method
else
	syntax
fi
done