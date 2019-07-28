#!/bin/bash
#Simple script with basic math operations
A=10
B=25

#Addition
var=`expr $A + $B`
echo "A + B = $var"

#Substraction
var=`expr $A - $B`
echo "A - B = $var"

#Multiplication
var=`expr $A \* $B`
echo "A * B = $var"

#Division
var=`expr $B / $A`
echo "B / A = $var"

#Modulus
var=`expr $A % $B`
echo "A % B = $var"

#Assignment
A=$B
A=10

#Equality
if [ $A == $B ] ; then
echo "A is equal to B"
fi

#Not Equality
if [ $A != $B ] ; then
echo "A is not equal to B"
fi