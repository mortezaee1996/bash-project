#! /bin/bash

#---------------------------------------------------------#
#		condition in bash script		  #
#---------------------------------------------------------#
	list=("naser" "hamid" "mohammad" "mahdi")

	echo "please enter your name:"
	read  name

	if [[ " ${list[@]} " =~ " ${name} " ]]
	then
		echo "welcome $name to our session ^_^"
	else
		echo "the new member want to login uor session!!!"
	fi
#
#
#
#
#
#
#
