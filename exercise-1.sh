#! /bin/bash


	echo " please enter a number: "
	read num

	if [ "$num" -gt 10 ]; then
    		echo "عدد $num بزرگتر از ۱۰ است."
	elif [ "$num" -eq 10 ]; then
    		echo "عدد $num مساوی ۱۰ است."
	else
    		echo "عدد $num کوچکتر از ۱۰ است."
	fi

