
# Relational Operators for Numbers

: '
 -eq, -ne, -lt, -gt, -le, -gt
 these are working fine, only for numbers/integers

'

echo "====================================  -eq, -ne, -lt, -gt, -le, -gt ============================"

read -p "Give a nmber a:" a
read -p "Give another number b:" b


echo "--------------------- -eq --------------------"

if [ $a -eq $b ];then 
  echo "$a and $b are equal " 
fi

echo "--------------------- -ne --------------------"

if [ $a -ne $b ];then 
  echo "$a and $b are not equal " 
fi

echo "--------------------- -lt -------------------"
if [ $a -lt $b ];then 
  echo "$a is less then $b"
fi

echo "--------------------- -gt ----------------"
if [ $a -gt $b ];then 
  echo "$a is greater then $b"
fi


echo "--------------------- -le --------------------"

if [ $a -le $b ];then 
  echo "$a is less then or equal  $b"
fi

echo "--------------------- -ge -------------------"
if [ $a -ge $b ];then 
  echo "$a is greater the or equal to $b"
fi


echo "==============================  =, ==, !=, <,>,<=,>= =============================="

echo "-------------------- = -------------------" 
c=$b # = as assignment operator
echo "b value is assigned to c and it's value os $c"


if [ $a = $b ]; then    # = as equality check 
   echo "$a and $b are equal "
fi


echo "--------------------- == ----------------"

if (( $a == $b ));then 
  echo "$a and $b are equal " 
fi

echo "--------------------- != ----------------"

if (( $a != $b ));then 
  echo "$a and $b are not equal " 
fi

echo "--------------------- < ----------------"
if (( $a < $b ));then 
  echo "$a is less then $b"
fi



echo "--------------------- > ----------------"
if (( $a > $b ));then 
  echo "$a is greater then $b"
fi

echo "--------------------- <= ----------------"

if (( $a <= $b ));then 
  echo "$a is less then or equal  $b"
fi

echo "--------------------- >= ----------------"
if (( $a >= $b ));then 
  echo "$a is greater the or equal to $b"
fi






