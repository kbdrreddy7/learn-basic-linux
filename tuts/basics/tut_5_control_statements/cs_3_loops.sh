
 # loops & loop controls


echo "--------------------------- for loop  -------------------------------"
for var in 0 1 2 3 4 5 6 7 8 9  # any list of items
    do
        echo $var
done


echo "------------------------------"

for file in $HOME/.bash*
do
   echo $file
done


echo "--------------------------- while loop  -------------------------------"

a=0

while [ $a -lt 10 ]  # if the condition is true -> execute
do
   echo $a
   a=`expr $a + 1`
done


echo "--------------------------- untill loop  -------------------------------"


a=0

until [  $a -gt 10 ] # until the condition becomes true, it'll execute ( opp to while )
                     # stops when condition becomess true ( opp to while )
# until [ ! $a -lt 10 ]

do
   echo $a
   a=`expr $a + 1`
done


echo "====================== loop controls -> continue, break, continue n, break n ========="

echo "--------------------------- continue   -------------------------------"
for var in 0 1 2 3 4 5 6 7 8 9  # any list of items
    do
        if [ $var == 2 ];then
           echo " ------ skipping $var"
           continue
        fi
       echo " priniting $var"    
done




echo "--------------------------- break   -------------------------------"
for var in 0 1 2 3 4 5 6 7 8 9  # any list of items
    do
        if [ $var == 2 ];then
           echo " ------ breaking $var"
           break 
        fi
       echo " priniting $var"    
done


echo "========================= Nested Loop ================================="


echo "----------------- continue n ( continue to the nth enclosing loop ) --------------"
for var in 0 1 2 3 4  # any list of items
    do
       echo " loop no: $var"
        for fruit in Apple Banana Cherry Dragon Elderberry
           do 

                if [ $fruit == Banana ];then
                    echo " ------ skipping $fruit"
                    continue   # deault 1
                fi

                if [ $var == 2 ];then
                    echo " ------ skipping all the fruits in the $var cycle  "
                    continue 2
                fi

                echo " priniting $fruit"    
              

           done

        echo "---------------------> "   
       
done


echo "--------------------------- break n ( break the nth enclosing loop ) -------------------------------"
for var in 0 1 2 3 4  # any list of items
    do
       echo " loop no: $var"
        for fruit in Apple Banana Cherry Dragon Elderberry
           do 

                if [ $fruit == Cherry ];then
                    echo " ------ skipping all fruits after the fruit $fruit"
                    break   # deault 1
                fi

                if [ $var == 2 ];then
                    echo " ------ skipping all the loops, after $var cycle  "
                    break 2
                fi

                echo " priniting $fruit"    
              

           done

        echo "---------------------> "   
       
done
