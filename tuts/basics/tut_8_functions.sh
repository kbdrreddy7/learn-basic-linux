


echo ------------------ no arg function---------------
function greet(){
    echo Hello
}

greet

echo ----------------------- arg function------------

function wish(){
    echo hello $1  ## $2, $3 etc   for more
    ## $0 is file name
}

wish Ravinder


## ref https://stackoverflow.com/questions/8742783/returning-value-from-called-function-in-a-shell-script

echo -----------------------return function------------

: '
in shell we can return only numbers  # 0 for failure  and non-zero for success

we can return strings with echo 
if return string with return --> then it gives error, but works

'


function sum(){

val=`expr $1 + $2`   # in Bourne shell ( works in all)
  return $val
}

sum 10 20

result=$? ## $?  holds the previous command result

echo sum is $result

echo '-----------------------returning string with echo-substitution function------------'


function hi(){
     ret=hi

     ## return $ret   ## string return wotks, but gives error
     echo $ret
}

result2=$( hi )   ## echo result nis substituted
## result2=$?    ## if return is used in the function ## string return wotks, but gives error

echo result2 is $result2


echo ------------------- sharing the values------------------


shared=""

function shareValue(){

    shared="Hello"
}


shareValue

echo shared value is $shared

echo -----------------nested functions------------------

function nested(){

    greet 
}


nested




:' 
Function Call from Prompt

we need to define function in .bash or .profile or .bash_profile  ( any scrpt that executes on login),
then we can call the function from shell directly


https://www.tutorialspoint.com/unix/unix-shell-functions.htm

  funstion calling is not working in the current shell as suggested in the above tutorial,
  but working from .profile / .bash   ( user based default scripts )


'