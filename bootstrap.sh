#!/bin/sh

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
