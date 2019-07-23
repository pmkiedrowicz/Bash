#!/bin/bash
#Simple .csv parser
#Syntax: ./parse_csv.sh ./file_to_parse.csv
#OLDFIS saves the current environment IFS value
#to put back after script finish
OLDIFS="$IFS"
#IFS is the current separator of next records, default by coma ','
IFS=","
#Print header of output, '\033' inform that next value will be
#a color, '[1;34m' stands for color blue
echo -e "\033[1;34mPrice\tQuantity Product"
#Main loop to print values, default three in line
while read product price quantity
do
#Print actual values from file, '[1;34m' stands for color yellow
echo -e "\033[0m$price\t$quantity\t$product"
#Read actual file as first argument
done < "$1"
#Setting back IFS environment value
IFS=$OLDIFS