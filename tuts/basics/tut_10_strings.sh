

echo ====================== Strings =========================

 str="Hello this is String"

echo -----------------length---------------------
 echo -e "'${str}' length is ${#str}"

echo -----------------concat---------------------

 concat_str1=${str}${str}
 concat_str2=$str$str
 concat_str3="${str} ${str}"

echo -e "$concat_str1 \n$concat_str2 \n$concat_str3"

echo -----------------substring---------------------

 echo -e "'${str}' length is ${#str}"
 echo ${str:2}  # from starting index
 echo ${str:2:3} # from index to , next number of elements


echo --------------------- deleting matched substring---------------------

str="hello.hi.ravinder.reddy"

pattern="." 

echo -e "\n"

echo "string :'$str', and  pattern :'$pattern'"

echo -e "\n"





echo "delete the shortest match:from beginning:-" ${str#*$pattern} ## ${string#pattern}
                  # this won't affect the actual one   # here * means any
echo "delete the shortest match:from ending:-" ${str%$pattern*} ## ${string%pattern}
echo "delete the longest match:from beginning:-" ${str##*$pattern}  ## ${string#pattern}
echo "delete the longest match:from ending:-" ${str%%$pattern*} ## ${string%pattern}

: '
   see the below examples first...the to remember
    # (hash) means beginning, 
    % (percent) means ending   
      
      alphabetical order
      h-b  // first to first
      p-e  // last to last
' 

echo --------------------- replace matched substring---------------------

str="hello.hello.hi.ravinder.reddy.reddy"

pattern="."
begin_match="hello." 
end_match=".reddy" 

replace='@'
echo -e "\n"

# echo "string :'$str',   pattern :'$pattern',  and replace:'$replace'"

echo -e "\n"

 # this won't affect the actual string
echo "replace the first match:-" ${str/$pattern/$replace} ## ${string/pattern/replacement}
echo "replace all the matchs:-" ${str//$pattern/$replace} ## ${string//pattern/replacement}
echo "replace the first match:from beginning:-" ${str/#$begin_match/$replace}  ## ${string/#pattern/replacement}
echo "replace the first match:from ending:-" ${str/%$end_match/$replace} ## ${string%pattern}
echo "replace the longest match:from beginning:-" ${str/#*$begin_match/$replace}  ## ${string/#pattern/replacement}
echo "replace the longest match:from ending:-" ${str/%$end_match*/$replace} ## ${string%pattern}
