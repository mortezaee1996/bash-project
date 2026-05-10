#! /bin/bash
#---------------------------------------------------------#
#               loops in bash script                  #
#---------------------------------------------------------#
 
friend_list=("naser" "hamid" "mohammad" "mahdi")
for name in  "${friend_list[@]}" 
do
	echo " this person $name is freind_list "
done
 echo " ----------------------------------------------- "

	# for with seq or set 
	for num in  {1..10}
	do 
		echo " $num in: 1-10 set "
	done
