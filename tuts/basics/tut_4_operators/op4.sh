
# Logical Operators for Numbers


: '
 
'

echo  "============================  !, ||, && ============================"


pass_marks=35
sub1=36
sub2=36
total_marks=$(( $sub1 + $sub2 ))

echo " pass_marks=$pass_marks, total_marks=$total_marks, sub1=$sub1, sub2=$sub2 "


echo "-------------------------------- ! (not) --------------------------"

if (( ! ( $total_marks < $pass_marks ) )); then
  echo "total_marks $total_marks not lessthan then $pass_marks"
fi




echo "-------------------------------- || ( or )--------------------------"


# if [[ ( $sub1 > $pass_marks ) || ( $sub2 > $pass_marks ) ]];then
if [[ $sub1 > $pass_marks || $sub2 > $pass_marks ]]; then
  echo "You have passed at least one subject "
fi

echo "-------------------------------- && --------------------------"

if [[ ( $sub1 > $pass_marks ) && ( $sub2 > $pass_marks ) ]]; then
  echo "You have passed in both the subjects "
fi



 echo  "============================  -o, -a ============================"



echo "-------------------------------- -o (or)--------------------------"

if [ $sub1 -ge $pass_marks -o $sub2 -ge $pass_marks ];then
  echo "You have passed atleast one subject"

fi


echo "-------------------------------- -a (and)--------------------------"

if [ $sub1 -ge $pass_marks -a $sub2 -ge $pass_marks ];then
  echo "You have passed both the subjects"

fi



