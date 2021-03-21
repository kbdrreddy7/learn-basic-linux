
# File Operators

: '
  block files / chareter files
    https://unix.stackexchange.com/questions/60034/what-are-character-special-and-block-special-files-in-a-unix-system

'

echo "======== -e, -f, -d, -s, -r, -w, -x, -O, -G, -u, -g, -N, -nt, -ot ======================="

read -p "Enter a file/folder name:" file

echo "------------------ -e (existance check ) ------------------"

if [ -e $file ];then  # checks for file or folder
   echo " file/folder $file exists"
 else echo " file/folder $file not exists"
fi

echo "------------------ -f (file existance check ) ------------------"

if [ -f $file ];then # checks only for file
   echo " file $file exists"
 else echo " file $file not exists"
fi


echo "------------------ -d (direcory existance check ) ------------------"

if [ -d $file ];then # checks only for direcory
   echo " folder $file exists"
 else echo " folder $file not exists"
fi


echo "------------------ -s (file non-zero size check  ) ------------------"

if [ -s $file ];then # checks non-zero size of file  -> for directory return true always
   echo " $file size is more than 0 "
 else echo "  $file size is 0  "
fi


echo "------------------ -r (checks for read permission  ) ------------------"

if [ -r $file ];then # checks for read permission of a file/directory
   echo " $file has read permission "
 else echo "  $file doesn't have read permission "
fi

echo "------------------ -w (checks for write permission  ) ------------------"

if [ -w $file ];then # checks for read permission of a file/directory
   echo " $file has write permission "
 else echo "  $file doesn't have write permission "
fi


echo "------------------ -x (checks for execute permission  ) ------------------"

if [ -x $file ];then # checks for read permission of a file/directory
   echo " $file has execute permission "
 else echo "  $file doesn't have execute permission "
fi


echo "------------------ -O (checks for ownership of the current user  ) ------------------"

if [ -O $file ];then # checks for ownership of a file/directory
   echo " you are the owner of the $file"
 else echo " you are not the owner of the $file "
fi


echo "------------------ -G (checks for group the current user  ) ------------------"

if [ -G $file ];then 
   echo " your group id is same that of the file $file"
 else echo " your group id is not same that of the file $file"
fi


echo "------------------ -u (checks for user id is set to the file   ) ------------------"

if [ -u $file ];then 
   echo " user id  exists for the $file"
 else echo " user id not exists for the $file "
fi


echo "------------------ -g (checks for group id is set to the file ) ------------------"

if [ -g $file ];then 
   echo " group id exists for the file $file"
 else echo " group id not exists for ile $file"
 fi


 echo "------------------ -N (checks the file modified or not ) ------------------"

 # unable to understand

if [ -N $file ];then 
   echo " file $file  is modified"
 else echo " file $file  is not modified "
 fi

   echo \n

  read -p " Enter 1st file ": file1
  read -p " Enter 2nd file ": file2



  echo "------------------ -nt (check 1st file newer than the 2nd file ) ------------------"

if [ $file1 -nt $file2 ];then 
   echo "  $file1  is newer than the $file2 "
 else echo  "  $file1  is not newer than the $file2 "
 fi


  echo "------------------ -ot (check 1st file older than the 2nd file ) ------------------"

if [ $file1 -ot $file2 ];then 
   echo "  $file1  is older than the $file2 "
 else echo  "  $file1  is not older than the $file2 "
 fi