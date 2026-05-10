#! /bin/bash


#---------------------------------------------------------#
#                   array in bash script                  #
#---------------------------------------------------------#

nums=(1 2 3 4 5)
echo "please enter a number: "
read number

#--- Part 1: Check if number exists, if not add it ---#
for  numbers in   ${nums[@]}
do
        if [[ $numbers -eq $number ]]
        then
                echo "you input number exist and equal with ${nums[@]} "
                exit
        fi
done

nums+=($number)
echo "nums[5]= $numbers"
echo "Array: ${nums[@]}"
echo " --------------------------------------- "

#--- Part 2: Display array from end to start ---#
echo "display array item from end to start:"
for (( i=${#nums[@]}-1; i>=0; i-- ))
do
        echo -n "${nums[$i]} "
done
echo ""
