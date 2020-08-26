#!/bin/bash

# Tests the directory, if there is a return
#XXX I want to prevent the user from entering 
# the entire path /home/$USER
# Enter search directory only
# Ex: 
# 	Enter the directory:
# 	Downloads
# 	Directory found: /home/user/Downloads

echo "Enter search directory: "
read dir
# Base directory
bash_dir="/home/$USER"

# To use absolute paths,remove that line
dir="$bash_dir/$dir"

if test -d  "$dir"
then
	echo -e '\033[32m Found directory: \033[m'"$dir"
else
	echo -e '\033[31m Directory not found!\033[m'
fi
