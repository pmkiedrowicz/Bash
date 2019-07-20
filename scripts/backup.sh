#!/bin/bash
#Code provide a backup to selected .* files, putting them in single choosen directory
#read -p - read the input in same line after string
read -p "Type the extension of files to backup in format: .extension  " suffix
read -p "Name of catalogue to put files in format: backup  " dir
#Code under test if choosen directory exists
#If test return status equals 0 then it create directory
#if test return status is different than 0 it just skip next part
#test -d         //checks for a existing directory
#mkdir -m 700    //create directory with chmod 700
test -d $HOME/$dir || mkdir -m 700 $HOME/$dir
#Search for matches files and copy them under $dir directory
#find $HOME -path $HOME/$dir/          //search for every match under $HOME directory
#                                      //and every subdirectory under it
#                                      //and exclude backup directory
#-prune                                //dont create output into subdirectories
#-o                                    //send the output to the files
#-name "*$suffix"                      //search for matching suffix files
#-exec rsync -rv                       //execute copypaste command for each match
#--exclude=backup.sh                   //exclude backup.sh
#$HOME/$dir                            //put the files into backup directory
find $HOME -path $HOME/$dir/ -prune -o \
-name "*$suffix" -exec rsync -rv --exclude=backup.sh {} $HOME/$dir \;
exit 0
