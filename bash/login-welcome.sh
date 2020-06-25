#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
uname="$USER" #environment variable is used to get username
hostname="$(hostname)" #environment variable is used to get hostname 
day=$(date +%A) #date command is used to have day of week
currenttime=$(date +%I:%M\ %p) #date command is used to have date

###############
# Main        #
###############
if [ "$day" = Monday ]; # if else command is used to have test day name and is also used to add custom line to print message according to day name
then
csay="Welcome to planet $hostname, beautiful $uname!"
elif [ "$day" = Tuesday ];
then
csay="Welcome to planet $hostname, aws engineer $uname!"
elif [ "$day" = Wednesday ];
then
csay="Welcome to planet $hostname, DB admin $uname!"
elif [ "$day" = Thursday ];
then
csay="Welcome to planet $hostname, security expert $uname!"
elif [ "$day" = Friday ];
then
csay="Welcome to planet $hostname, canadian $uname!"
elif [ "$day" = Saturday ];
then
csay="Welcome to planet $hostname, psychologist $uname!"
else
csay="Welcome to planet $hostname, weekend waker $uname!"
fi
cowsay "$csay It is $currenttime on $day ."
