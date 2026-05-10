#! /bin/bash

#---------------------------------------------------------#
#               condition in bash script                  #
#---------------------------------------------------------#

	echo "please enter your number:"
	read number
	if [[ $number -gt 100 ]]
	then
		echo  "ths your number $number is greateher than 100"
	elif [[ $number = 100 ]]
	then 
		echo "your number is equall with 100"
	else
		echo "your number is lower than 100"
	fi
