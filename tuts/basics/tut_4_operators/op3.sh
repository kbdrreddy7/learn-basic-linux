
#! /usr/bin/bash

# Relational Operators for Strings


: '
=, ==, !=,<,>  operators works fine with strings

<=, >= these operators do not work for strings

'




read -p "give string a:" a   
read -p "give another string b:" b


echo "=========================== =, ==, !=, <, >  ============================================"


echo "------------------ = ------------------"
c=$b # = as assignment operator
echo "b vaue $b is assigned to c and its value is $c"


if [ $a = $b ]; then  # = as equality checl operatot
  echo a and b both are equal 
fi

echo "------------------ == ------------------"

if [ $a == $b ]; then
  echo a and b both are equal 
fi

echo "------------------ != -------------------"

if [ $a != $b ]; then 
   echo a and b are not equal
fi  

echo "------------------ < -------------------"

if [[ $a < $b ]];then 
   echo a is lesser than  b 
fi  

echo "------------------ > -------------------"

if [[ $a > $b ]];then 
   echo a is greator than  b 
fi  
