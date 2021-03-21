#!/bin/bash

# reading /taking input from terminal

echo  "----------------------------method-1----------------------"

echo "Enter your name:"
read name

echo "Hello $name"


echo  "----------------------------method-2----------------------"
read -p 'User Name: ' user_name   # -p prompt    # it'll show wile entering

echo Your user name is  $user_name 

echo  "----------------------------method-3----------------------"


# Read Password
echo  "Password:" 
read -s password    # -s silent  # it won't print while entering

: '
if the below error comes
---> read: Illegal option -s

make sure you are running with shell not with bash
   tip: to run with shell...make the file executable & run like ./name.sh (doubt)

'

# echo    # this optional   

echo Your password is $password