#!/bin/bash
#Simple script taking word to lower case
#Function to_lower takes $1 argument
to_lower(){
    input="$REPLY"
#Function use tr library to simple lower case
    output= echo $REPLY | tr [A-Z] [a-z]
#return statement
    return $output
}
#Using while-do loop to continue working with next words
#q to stop the loop and end script
while true
do
    read -p "Enter word to lower case, 'q' to stop: "
    if [ $REPLY = "q" ] ; then
    break
#Use to_lower function and print actual output
else
    REPLY=$(to_lower "$REPLY")
    echo $REPLY
fi
done