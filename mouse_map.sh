#!/bin/bash

echo
echo "======================================================"
echo "Elecom Huge Trackbal Mouse Map Script"
echo "Script made by aa@aztek.xyz, please email any questions"
echo "======================================================"
echo
echo "list of mice"
echo "========================="
echo
xinput --list | grep -i mouse
echo 

read -p "Please enter mouse id number: " mouse


echo
echo "Your current mouse button map is:"
xinput get-button-map $mouse

read -p "Would you like to continue with the mapping? (y/n) " answer

case $answer in
    y)
	echo "mapping buttons..."
        xinput set-button-map $mouse 1 2 3 4 5 6 7 8 9 10 11 3
        echo "The mouse has been mapped with 1 2 3 4 5 6 7 8 9 10 11 3"
	notify-send "Mouse Has Been Mapped"
	;;
    *)
        echo "exiting script..."
	;;
esac

echo 
echo "Thank you! Have a pleasant day :-)"
