#!/bin/bash
#script for checking availability of disney restaurants
#infinite loop- to exit mover to terminal and press ctrl+c
while true; do
# move the mouse  x    y
#moves the mouse to hover over "search times" button
		xdotool mousemove 930 607
# left click on button
		xdotool click 1
# right click
#xdotool click 3
		sleep 10
#highlights txt saying if available or not
		xdotool mousemove 930 650
		xdotool click 1
		xdotool click 1
		xdotool click 1
		sleep 1
#copy
		xdotool key 'Control_L+c'
		sleep 1
#move to terminal
		xdotool key 'Alt+Tab'
		sleep 1
#open new terminal
		xdotool key 'Control_L+T'
		sleep 1
#puts if available or not text we just copied into a new file named output
		xdotool type 'echo "'
		sleep 1
		xdotool mousemove 430 450
		sleep 1
		xdotool click 3
		sleep 1
		xdotool mousemove 460 515
		sleep 1
		xdotool click 1
		sleep 1
		xdotool type '" > output.txt'
		sleep 1
		xdotool key 'Return'
		sleep 1
#closes the opened terminal
		xdotool type 'exit'
		sleep 1
		xdotool key 'Return'
		sleep 1
#moves back to chrome
		xdotool key 'Alt+Tab'
		sleep 1
#reads the file to see of there are availabilities, if not then it returns back to the top of the while loop
		line=$(head -n 1 output.txt)
		if [[ $line == No* ]] ; then
			echo "no availability"
		else
#if availability, sends an email to specified email address
#could have used the send email script but could not remember how to do that
			echo "spot open"
			#xdotool key 'Alt+Tab'
			#xdotool mousemove 1340 90
			xdotool key 'Control_L+Shift+Tab'
			sleep 1
			xdotool key 'c'
			sleep 1
#change to email you want sent to
			xdotool type 'isabellagines94@gmail.com'
			sleep 1
			xdotool key 'Tab'
			sleep 1
			xdotool key 'Tab'
			sleep 1
			xdotool key 'Control_L+v'
			sleep 1
			xdotool key 'Tab'
			sleep 1
			xdotool key 'Control_L+v'
			sleep 1
#clicks send button
			xdotool mousemove 840 740
			sleep 1
			xdotool click 1
			sleep 5
			
			#xdotool key 'Control_L+Return'
			sleep 1
			xdotool key 'Control_L+Shift+Tab'
		fi
		sleep 900
done
