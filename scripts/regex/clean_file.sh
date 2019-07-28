#!/bin/bash
#Script clean all empty lines, also clear lines starting with '#' hashtag
#Syntax: ./clean_file.sh text_file.txt
#Function checks if given $1 a file or not, returns '1' as false
function is_file(){
	if [ ! -f "$1" ] ; then
		echo "$1 is not a file"
		exit 1
	fi
}

function clean_file {
#Main function clean_file first checks if given $1 is a file
	is_file "$1"
#'-i.bak' create backup of legacy file with .bak extension
#'/^\s*#/d;/^$/d' 
# /^     beginning of lines
# \s*#   white spaces/tab coverage and hashtags
# d      delete fit chars
# ;      another regex to checks
# /^$/d  delete empty rows
	sed -i.bak '/^\s*#/d;/^$/d' "$1"
	echo "File size in bytes before cleaning: $1.bak"
#Simple print filesize in bytes
	du "$1.bak" --bytes
	echo "File size in bytes after cleaning: $1"
	du "$1" --bytes
#Return '0' as true
	exit 0
}
#Call main function to execute with $1 param
clean_file "$1"