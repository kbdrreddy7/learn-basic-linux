
# substitution-> command substitution

: '
 for command substitution, we need to use `` (back ticks) always 
'


DATE=`date`  # date command output will be assigned to DATE
echo "Date is ${DATE}"

echo "------------------------"

UP=`date ; uptime`  

: '
    uptime gives 
        curret time,
        and how long the system is running,
        how many logged in users,
        the load time for the past 1, 5 and 15 minutes respectively.
'

echo "Uptime is $UP"