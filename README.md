# Bash

### Basic
```
echo $BASH_VERSION  //version
cal                 //calendar
passwd              //change password
whoami              //current user
users               //users
who                 //users with details
w                   //more details
finger              //users
cd ~username        //home directory of user
ps -f               //list processes with additional data
kill -9 PID         //kill process 
top                 //realtime processes status
export PATH=$PATH:. //adds current location to PATH
test -d -f file     // test if dir/file exists
   && echo "true" || echo "false"
echo $?             //check last command (0 = OK)
```
### Permissions
```
owner/group/other(world)
drwxr-xr---        //0 directory
                   //1-3 read+write+execute (user)
			       //4-6 read+execute (group)
			       //7-9 read (world)
Read               //read content (view filenames inside dir)
Write              //modify+remove (add+remove)
Execute            //run as program
chown user file    //change owner of file
chgrp group file   //change group of file
chmod XXX          //three digits [user/group/world]
0 ---              //No permission
1 --x              //Execute permission
2 -w-              //Write permission
3 -wx              //Execute and write
4 r--              //Read permission
5 r-x              //Read and execute permission
6 rw-              //Read and write permission
7 rwx              //All permissions 	
```
### Shutdown
```
halt          //fast shutdown
init 0        //finishing tasks (scripts) and shutdown
init 6        //shutdown+restart
poweroff      //power off system
reboot        //reboot
shutdown      //just shutdown
```
### Files
```
ls /usr/local  //list names 
ls             //list all directories/files
ls -la         //plus properties
ls pv*         //list all names starting with pv
ls pv?         //list 3 symbol names starting with pv
```
### vi
```
vi newFile     //creates new file and go view mode
i              //edit file
Shift+ZZ       //save+close file
kjhl           //WSAD
```
### grep
```
grep -v        //prints not matching pattern
grep -n        //match + line number
grep -c        //no. counts
grep -i        //case insensitive
```
### sort
```
sort +4n | more   //skip sort first 4 columns, space to unveil more
```
### cat
```
cat -b newFile    //read content with no. lines
```
### wc
```
wc newFile        //no. lines/words/bytes/fileName
```
### cp
```
cp oldFile newFile     //copy file
```
### pr
```
pr option filename     //read content with formatting
```
### mv
```
mv oldName newName     //rename file/directory
```
### rm
```
rm -i newFile             //remove file (ask for remove)
rmdir newDirectory        //remove directory
```
### mkdir
```
mkdir dirname             //create directory
mkdir -p dir/dir/dir      //create nested directories
```
### ssmtp
```
sudo apt-get install ssmtp
---------------------------------
sudo nano /etc/ssmtp/ssmtp.conf                 //configure ssmtp
root=myemailaddress@gmail.com
mailhub=smtp.gmail.com:587
AuthUser=mygmailusername
AuthPass=mypassword
UseSTARTTLS=YES
---------------------------------
ssmtp recipient_email@example.com  < mailFile   //send actual mail from mailFile
To: recipient_email@example.com
From: myemailaddress@gmail.com
Subject: test email

hello world!
```














