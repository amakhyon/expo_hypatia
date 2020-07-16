#!/bin/bash


touch data
read -p "1)Academic advisor /n 2)Student /n 3)Professor /n choice: " choice

if [[ $choice -eq 1 ]]
then
	echo "signed in as Academic Advisor"
	read -p "name: " name
	echo "enter courses"
	read course1 course2 course3
	
	cd students
	mkdir $name && cd $name
	touch $course1 && touch $course2 && touch $course3

		
elif [[ $choice -eq 2 ]]
then
	echo "Signed in as student"
	read -p "name: " name
	cd students/$name
	tail -n +1 *

	
elif [[ $choice -eq 3 ]]
then
	echo "signed in as professor"
	read -p "1)update grades /n 2)view marks /n choice: " choice2
	
	if [[ $choice2 -eq 1 ]]
	then
		read -p"student name: " name
		cd students/$name
		ls
		read -p "enter course name: " course
		read -p "grade: " grade
		echo $grade >> $course
		
		
		
	elif [[ $choice2 -eq 2 ]]
	then
		echo "folla"
	fi
	
fi
