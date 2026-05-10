#! /bin/bash
#---------------------------------------------------------#
#               condition in bash script                  #
#---------------------------------------------------------#

	echo  "please enter the student grade :"
	read grade

	if [[ $grade -gt 90 ]]
	then
		echo " this student is the A class ^_+ "
	elif [[ $grade -gt 80 ]]
	then
		echo " this student is the B class 0_0 "
	elif [[ $grade -ge 70  ]]
	then
		echo " this student is C class 0_0 "
	elif [[ $grade -ge 60 ]]
	then
		echo " this student is C class 0_0 "

	else 
		echo " you will not gone to top class -_-"
	fi
