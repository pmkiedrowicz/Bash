#!/bin/bash
STR="No found any taho and taho"
#Hashtag '#' before variable makes print the length of it
echo ${#STR} #26

#Print index of substring character in String, here letter 'a'
#Counting starts from 1
SUBSTR="hat"
expr index "$STR" "$SUBSTR" #10

#Print substring extracted value after 3rd char and takes
#next 7 character of main string
FROM=3
LEN=7
echo ${STR:$FROM:$LEN} #found a

#Print string except first 3 characters
echo ${STR:3} #found any taho and taho

#Substring replacement
#Replace first occurance of word 'taho' with 'tomato'
echo ${STR[@]/taho/tomato} #No found any tomato and taho
#Add additional slash to replace all occurencies
echo ${STR[@]//taho/tomato} #No found any tomato and tomato

#Substring delete
#Delete all occurance of word 'taho'
echo ${STR[@]// taho} #No found any and


