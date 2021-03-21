
# Arithmetical Operators

: '
   +, -, *, /, %
'


val=`expr 2 + 2`   # in Bourne shell ( works in all)
echo "Total value : $val"

: '
   - Bourne shell did not originally have any mechanism to perform simple arithmetic operations
    but it uses external programs, either awk or expr.

   - There must be spaces between operators and expressions  2+2 not valid  -> 2 + 2 valid

   - the complete expression should be in back ticks  

'

echo ----------------------------------

balance=2   # balance= 2 // not valid--> no space after assignment
income=2000
emi=1000

total=$(( $balance + $income )) # bash/shell   #  Construct Parentheses --> space is required


saving=$(( $total - $emi ))
echo "total is $total  and saving is $saving"

echo ----------------all arithmetic operations------------

a=10
b=3


: '
read -p "Enter First No (a):" a
read -p "Enter Second No (b):" b


'


echo " a = $a, b = $b"

res1=$(( $a + $b )) 

echo " a + b = $res1 "

res2=$(( $a - $b )) 
echo " a - b = $res2 "


res3=$(( $a * $b )) 
echo " a * b = $res3 "


res4=$(( $a / $b )) 
echo " a / b = $res4 "  

res6=`echo "$a/$b" | bc -l ` # command substitution   # bc basic caliculator # -l mathlib
# res6=$(echo "$a/$b" | bc -l )  # command substitution 
echo decimal division of $a and $b is $res6


: '
    ref https://unix.stackexchange.com/questions/437356/using-echo-command-with-in-shell-script

    i.e res=$(echo any_command )  # command substitution
        res=output_of_the_command
        i.e $(echo any_command) will be replaced by the command result

    eg:

    command_sub=$(echo 6/3 | bc )   #  2 / 3
    echo command_sub value is $command_sub


    for bc and -l  
    ref https://www.geeksforgeeks.org/bc-command-linux-examples/
'

res5=$(( $a % $b )) 
echo " a % b = $res5 "



echo "================== command substitution=============="

command_sub=$(echo 6/3 | bc )   #  2 / 3
echo command_sub value is $command_sub
