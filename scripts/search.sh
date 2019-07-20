#!/bin/bash
#Provided script check for sequence in file
#$usage is used whenever user give !=3 parameters
#param c   //Counts how many times it appear in file
#param p   //Print all line occurance in file
#param v   //Print all line except match sequence ones
usage="Syntax: search.sh file sequence operation[cC,pP,dD]"
#if number of parameters is different than 3
#print $usage and finish with code 2
if [ ! $# -eq 3 ] ; then
echo "$usage"
exit 2
fi
#if file is not ordinary, finish with code 3
[ ! -f $1 ] && exit 3
#check for 3rd param
case $3 in
[cC])
msg="Counting how many sequence appear in file: "
opt="-c"
;;
[pP])
msg="Printing all occure of sequeince in file: "
opt=""
;;
[dD])
msg="Printing all lines excluding ones with sequence"
opt="-v"
;;
#if theres no match just print Bad params msg
*)
echo "Bad parameters $1 $2 $3";;
esac
#print matching case
echo $msg
#print matching lines of file
grep $opt $2 $1
exit 0