#!/bin/bash
#Creating a script that asks for date and time as in when to run a particular job.

echo "Hey user, please enter the below details to run a particular job at particular time."

echo "Please set the date and time of your system properly."

echo -e "Enter the day at which you want to run your command/s.[0-7 or names(use 3 letter of particular day)] \c"
read day

echo -e "Enter the month at which you want to run your command/s.[1-12 or names(use 3 letter of particular month)] \c"
read month

echo -e "Enter the date at which you want to run your command/s.[1-31] \c"
read date

echo -e "Enter the hours at which you want to run your command/s.[0-23] \c"
read hours

echo -e "Enter the minutes at which you want to run your command/s.[0-59] \c"
read minutes

echo -e "Now, enter the command that you want to be done. \c"
read com

crontab -l > mycrontab &> /dev/null
echo "$minutes $hours $date $month $day $com" > mycron
crontab mycron
rm mycron

echo "Your job is done..!!"
