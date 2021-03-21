#! /usr/bin/bash

: '

-----wild cards--------
  .  any char
  ^  match starts with
  $  ends with
  *  zero or more times
  \  representing special char
  ()  group regex
  ?   exactly one char  

----------- Internal Regex----------
  {n}   n times exactly  
  {n,m}  n to m times ( not more than m)
  {n,}   n or more times
   
------------Extended Regex------------

  \+   one or more occurances
  \?   zero or one occurances


  =======================================
  ref https://www.geeksforgeeks.org/write-regular-expressions/

  Repeaters :- * , + and { } 
           * -> zero or more times
           + -> one or more times
           {} -> range
              {n}   -> n times
              {n,m} -> n<m  ( n includes, m exclude )
              {n,}  -> n to any ( n includes)
              {,m}  -> zero to m ( m exclude )

 wild cards :- .   -> any char
 optional character :- ?   -> may present or may not
 starts with :- ^
 ends with :- $

 character classes:- 
      /s : matches any whitespace characters such as space and tab
      /S : matches any non-whitespace characters
      /d : matches any digit character
      /D : matches any non-digit characters
      /w : matches any word character (basically alpha-numeric)
      /W : matches any non-word character
      /b : matches any word boundary (this would include spaces, dashes, commas, semi-colons, etc)

charcter set :- [set_of_characters]   -> mathes with any one the char from the set

negation/except charcter set :- [^set_of_characters] -> not mathes with any one the char from the set

esacpe symbol:- \   -> to escape special meaning chars

Grouping Characters :- ( )  -> more than one regex as a single regex
                     eg:- ([A-Z]\w+)

Vertical Bar / OR :- | -> matches with any one of the regex set
                     eg:- th(e|is|at) will match words - the, this and that.

Backreference :- regex\n         
       eg: ([a-z])\1  -> Greek //in "ee" second e is same as first e for continuously 1 time
                               

Comment in regex:-
            inline:- regex(?# comment )regex
                   eg:- \bA(?#This is an inline comment)\w+\b

            inline x-mode:-regex#comment_till_end_of_the_line
                   eg:- (?x)\bA\w+\b#Matches words starting with A
           
              



'

sample="sample.txt"

echo "***************   reading"

  cat $sample   # to read sample named file contents
 
 echo \n
echo  "*************** "

 cat $sample | grep t  # prints lines containing t

echo "***************"

 cat $sample | grep ^t  # starts with t

 echo "***************"

 cat $sample | grep t$  # ends with t

 echo "***************"

 cat $sample | grep -E t\{2}  #  exactly two times  continuosly  // -E is required


  echo "***************"


 cat $sample | grep  "i\+t"   ## occurances of  t>i  and t is after i

  echo "***************"

cat $sample | grep  "\+t"   ## not understand

