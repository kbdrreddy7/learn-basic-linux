# control statements case (or) switch


echo ----------------example 1-----------------

FRUIT="apple"

case $FRUIT in
   "apple") echo "Apple pie is quite tasty." 
            ;;
   "banana") echo "I like banana nut bread." 
            ;;
   "kiwi") echo "New Zealand is famous for kiwi."   # multi line
           echo "New Zealand is near to AUS "
            ;;

   *) echo Nothing is matched
        ;;
esac

echo --------- example-2 --------------


echo $1

option="${1}" 
case ${option} in 
   -f) FILE="${2}" 
      echo "File name is $FILE"
      ;; 
   -d) DIR="${2}" 
      echo "Dir name is $DIR"
      ;; 
   *)  
      echo "`basename ${0}`:usage: [-f file] | [-d directory]" 
      exit 1 # Command to come out of the program with status 1
      ;; 
esac 