
# control statements if-else (or) decision making statements

: '
  all the values are truthy values
  only empty string and blank are falsy values 
'


echo -----------------if------------
if [ 2 -lt 4 ]   # [ 2 -lt 4 ]  # [ true ]
   then echo ' if true this is executed 1'
fi


echo -----------------if-else ------------
if [ 2 -gt 4 ] # [ ] # [ 2 -gt 4 ]  # blank is false 
   then echo ' if true this is executed 2'
else echo ' if false this is executed 3'   
fi


echo ----------------- multi statement if-else ------------
if [ 2 -gt 4 ]; then  # [ "" ]; then    # [ 2 -gt 4 ]; then  # empty sting is false
    echo ' if true this is executed 4'
    echo ' if true this is executed 5'
else 
    echo ' if false this is executed 6'   
    echo ' if false this is executed 7'  
fi

echo -------------------- nested if-else-if  & if-elif-------------------------

echo finding biggest of the three numbers

read -p "Enter first number (a):" a
read -p "Enter second number (b):" b
read -p "Enter third number (c):" c

echo given numbers are $a, $b, $c

if [ $a -gt $b ];then
    if [ $a -gt $c ]; then
        echo $a is the biggestof the three
     else  echo $c is the biggestof the three
    fi
 elif [ $b -gt $c ]; then 
    echo $b is the biggestof the three
 else   echo $c is the biggestof the three

 fi


: '

echo --------------------------------

if [ $a -gt $b ];then
    if [ $a -gt $c ]; then
        echo $a is the biggestof the three
     else  echo $c is the biggestof the three
    fi
 else
    if [ $b -gt $c ]; then 
    echo $b is the biggestof the three
   else   echo $c is the biggestof the three

 fi

'
     

