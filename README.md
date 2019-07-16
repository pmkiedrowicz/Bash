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
cd ~username        //home directory of user
```
### Permisions
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
0 ---	           //No permission
1 --x	           //Execute permission
2 -w-		       //Write permission
3 -wx		       //Execute and write
4 r--		       //Read permission
5 r-x		       //Read and execute permission
6 rw-		       //Read and write permission
7 rwx		       //All permissions 	
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
### cat
```
cat -b newFile    //read content of file with no. lines
```
### wc
```
wc newFile        //no. lines/words/bytes/fileName
```
### cp
```
cp oldFile newFile     //copy file
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















