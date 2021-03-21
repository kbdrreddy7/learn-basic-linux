

trim_string() {
    # Usage: trim_string "   example   string    "
    : "${1#"${1%%[![:space:]]*}"}"   ## here [:space:] means white space
    : "${_%"${_##*[![:space:]]}"}"   ## $_ means previous command
    printf '%s\n' "$_"
}

trim() {
  str="   123   "
    val=${str##*[[:space:]]}
    echo $val ${#val}
   
}

trim "   123   "