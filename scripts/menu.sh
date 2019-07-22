#!/bin/bash
while true
do
    echo "Choose the command"
    echo "0: System brief"
    echo "a: Backup"
    echo "b: Calendar"
    echo "c: Lower case string"
    echo "d: Factorial"
    echo "q: Exit"
    read -e -p "Please enter command: "
    echo " "
    case "$REPLY" in
    0) sh ./show_system.sh;;
    a) sh ./backup.sh;;
    b) sh ./calendar.sh;;
    c) sh ./to_lower.sh;;
    d) sh ./factorial.sh;;
    q) exit 0;;
    *) echo "Wrong char. Please try again."
esac
done