
# substitution-> variable substitution

echo "------------------- variable substitution ---------------"

read -p "Enter name " name 

echo "hello $name"

echo -e " hello $name \n How are you?" # -e enable interpretation for backslash escapes
                                       # -E disable interpretation for backslash escapes


echo '--------------------- ${} (interpolation)----------------'

echo " How are you ${name} ?"  # interpolation   # works with only double quatation


echo '----------------------- ${value:-deafult_value } ( un-assigned default value) ------------------------'

echo "Hi ${name:-"Stranger" }"  
# if value is not there, use default value, but don't assign to variable

echo " the value is: $name "  # here name=Stranger


echo '----------------------- ${value:+substitution } ( substitute the value ) ------------------------'


echo "Hi ${name:+"Friend" }"  # here name=Stranger
# value is substituted, but don't assign to variable

echo " the value is: $name "

echo '----------------------- ${value:?error_message } ( assigned default value) ------------------------'

read -p " Give again any name " name

echo "Hi ${name:?" Give any name" }"  
# if value is not there, prints error message, but don't assign to variable

echo " the value is: $name "



