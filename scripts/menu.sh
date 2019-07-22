#!/bin/bash
while true
do
    echo "Choose the command"
    echo "a: Backup"
    echo "b: Calendar"
    echo "c: Lower case string"
    echo "exit: Exit"
    read -e -p "Please enter command: "
    echo " "
    case "$REPLY" in
    a) sh ./backup.sh;;
    b) sh ./calendar.sh;;
    c) sh ./to_lower.sh;;
    exit) exit 0;;
    *) echo "Wrong char. Please try again."
    esac

done