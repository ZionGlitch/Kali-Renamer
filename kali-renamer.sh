#!/bin/bash

# Switch to root before running this script with 'sudo-i'.
# Change password for root with 'passwd root'.
# Reboot your Kali and login as the root user.
# Copy or create this script to the directory of your choice and run it.

# User Inputs
echo Enter a username:
read  new_username

echo Enter a first name, last name, or both:
read  real_name

echo Thank you $real_name, changing over your user, $new_username, now...

sleep 2

# Commands that change the user, group, and rename home directory
usermod -l $new_username -d /home/$new_username -m kali &&
groupmod -n $new_username kali &&
ln -s /home/$new_username /home/kali &&
chfn -f "$real_name" $new_username

echo  
echo  
echo User has been changed, welcome to Kali Linux $real_name.
sleep 1
echo Please remember to log out of root and change any passwords if needed.
sleep 1
echo Have fun hacking, goodbye.
