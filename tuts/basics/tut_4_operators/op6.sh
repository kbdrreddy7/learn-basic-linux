
# String Operators

echo "=========================== str, =, ==, !=, -z, -n ============================"


read -p "Enter any string: " str


echo "-------------------------- str (value) --------------------------"


if [ $str ];then # value check   // empty, false , 0 are false values
  echo " string has value "
 else echo " string is blank or empty "
fi



echo "-------------------------- = (equality check) --------------------------"

if [ $str = abc ];then # equality check
  echo " string value is abc "
 else
   echo " string value is not abc "
fi


echo "-------------------------- == (equality check) --------------------------"

if [ $str == abc ];then # equality check
  echo " string value is abc "
 else
   echo " string value is not abc "
fi


echo "-------------------------- != (not equality check) --------------------------"

if [ $str != abc ];then # equality check
  echo " string value is not abc "
 else
   echo " string value is abc "
fi


echo "-------------------------- -z (zero length check) --------------------------"

if [ -z $str ];then # zero length check
  echo " string length is zero "
 else
   echo " string length is non-zero "
fi


echo "-------------------------- -n (non-zero length/size check) --------------------------"


# str=""

# -n is not working for blank & emppty strings 

if [ -n $str ];then # non-zero length/size check
  echo " string length is non-zero "
 else echo " string length is zero "
fi




