#! /bin/bash

#---------------------------------------------------------#
#             while condition in bash script              #
#---------------------------------------------------------#


	echo " please enter your number: "
	read number

	while [[ $number -lt 10 ]] 
	do 
		echo " $number : lower than 10 "
		number=$(($number + 1))
	done
