
# select loop
# ref https://bash.cyberciti.biz/guide/Select_loop

: '
 
   - it takes a list of items
   - Each word in list is printed on screen preceded by a number. ( numbered menu )
   - on select of the item ( by number ),
            it passes the item to the  "do" block, we can do any statements fo that item

   - If the selct(line) is empty/blank, it will redisplay the menu .

   - If EOF (end of file) is read, the command completes.
        EOF = ctrl + d ( linux)
            = ctrl + z ( windows )

   - we can exit the loop by closing the program i.e CTRL+C

'

echo "--------------------------- select loop  -------------------------------"
select fruit in Apple Banana Cherry   # any list of items
    do
        echo " Eating $fruit "
done


## changing the prompt
echo "--------------------------- select loop with cutom prompt -------------------------------"
PS3="Please select one option:"
select fruit in Apple Banana Cherry   # any list of items
    do
        echo " You have selected  $fruit "
done



echo "--------------------------- select  with case  -------------------------------"
PS3="Please select one option:"
select fruit in Apple Banana Cherry   # any list of items
    do
        case $fruit in
          Apple)    echo "   make $fruit juice and drink" ;;
          Banana)   echo "  Peel the $fruit and eat" ;;
          Cherry)   echo "  Eat the $fruit normally" ;;
          *)        echo "  Select only the available fruit" ;;
        esac    
done
