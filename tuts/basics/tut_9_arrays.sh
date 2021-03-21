
# ref https://www.geeksforgeeks.org/array-basics-shell-scripting-set-1/

# ref https://www.tecmint.com/working-with-arrays-in-linux-shell-scripting/

# set -A array_name value1 value2 ... valuen    # in ksh

array1=(a b c d e f g h)

array2[0]=A
array2[1]=B
array2[2]=C
array2[3]=D
array2[4]=E
array2[5]=F
array2[6]=G
array2[7]=H

declare -a var   # explicit declaration of array

var[0]=0
var[1]=1
var[2]=2


array3=( [0]=Hello [2]=Hi [4]=OK )


echo ---------------------------- print all ------------------

echo  ${array1[*]}   ## all
echo  ${array2[@]}   ## all
echo  ${array3[@]}   ## all
echo  ${var[@]}   


echo ---------------------------- access by index ------------------


echo  ${array1[0]}  # 0th  # use interpolation always
echo  ${array3[2]}   
echo  ${array2}   # also prints 1st/0th element


echo "-----------------------------range ( sub array )-----------"
echo  ${array2[@]:1}   # from particular index

echo ${array2[@]:2:3}  # from and count

echo -----------------------------length---------------
echo ${#array1[@]} ${#array2[*]}
## echo ${#array1}  gives first element length, not array length


echo ---------------deleting an arry-----------------

unset var[1]  # deleting particular variable

echo before deleting: ${var[@]}
unset var
echo after deleting: ${var[@]}


echo ---------------reading/input an array------------------

read -p "enter array by spaces (more than 3 words ): " -a array

echo "the words are '${array[@]}'"
echo "2nd index word is '${array[2]}'"



echo ===========================Array Usages============================



echo ----------------------Command substitution-------------

# arry=( $(command) )

path="./"

files=( $(ls $path ) ) 

for file in "${files[@]}" 
do 
	 echo $file
done 

echo ----------------------deleting the matched pattern-------------

pattern="a"


echo array: ${array[@]}, and pattern:$pattern

val=${array[@]/$pattern/}  # ${array[@]/pattern} # this won't change the actual one
echo   $val

val=${array[@]/*$pattern*/}  #  here * means any
echo   $val

echo ----------------------replace the matched pattern-------------

replace="A"
echo array: ${array[@]},  pattern:$pattern, and replace:$replace

val=${array[@]//$pattern/$replace}  # ${array[@]//pattern/replace} # this won't change the actual one
echo   $val

val=${array[@]//*$pattern*/$replace}  #  here * means any
echo   $val