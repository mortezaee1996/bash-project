#! /bin/bash

#---------------------------------------------------------#
#                   array_2 in bash script                  #
#---------------------------------------------------------#

	arr=( 1 2 3 4 5 )
	echo "the array items are : ${arr[@]}"

	echo "reverse of array items are : ${arr[@]:(-1)}"     # ❌ ${arr[@]-1} → ✅ ${arr[@]:(-1)}

	echo "the 2th item of this array ${arr[1]} is : ${arr[1]}"  # ❌ ${arr[@]} → ✅ ${arr[1]}

	echo "the 2nd item from end of array ${arr[-2]} is : ${arr[-2]}"  # ❌ ${arr[a]} → ✅ ${arr[-2]}

echo "-------------part 2 of array samples -------------"

	arr2=('naser' 'hamid' 'mohammad' 'mahdi')

	echo " display 2th array items : ${arr2[@]} "
	echo " display array items and start to end items in : ${arr2[@]:1:3} "
	echo " dispaly array items and between 1 character to custuom characters: ${arr2[0]:1:3}"
