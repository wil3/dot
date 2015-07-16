#!/bin/sh

#for 254 color support
#can use tput colors to check how many in terminal are being used
sudo apt-get install ncurses-term

#Get all dot files, exclude current, parent, .git 
echo "Creating soft links..."
DOT=$(ls -d .* | grep -v '^\.*$' | grep -v '.git' | grep -v '.swp')
for i in $(echo ${DOT} | tr " " "\n")
do
	echo ${i}
	ln -sf ~/dot/${i} ~/${i}
	#Confirm 
	LS=$(ls ~/ -al | grep "\s\\${i}\s")
	echo ${LS}
done
