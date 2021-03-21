
# Logical Operators for Strings



echo "============================= !, ||, && ================================="



sub1=maths
sub2=physics


echo  "___________________________________ ! (not) ___________________________________"

if [ ! $sub1 = "maths" ] 

then
  echo "not a Maths subject"
else
  echo "Maths subject"
fi


echo  "___________________________________ || (or)  ___________________________________"

if [ $sub1 == "maths" ] || [ $sub1 == "physics" ]
# if [[ $score1 = "maths" || $score2 = "physics" ]]  # two [] for logical operators
# if [ $score1 = "maths" ] || [ $score2 = "physics" ]
then
  echo "at least one is Science subject"
else
  echo "both are non-Science subjects"
fi

echo  "___________________________________ && (or) ___________________________________"


if [ $sub1 == "maths" ] && [ $sub2 == "physics" ];then
# if [[ $sub1 = "maths" && $sub2 = "physics" ]]  # two [] for logical operators
# if [ $sub1 = "maths" ] && [ $sub2 = "physics" ]
  echo "Both are science subject"
else
  echo "Both are non-science  subjects"
fi


