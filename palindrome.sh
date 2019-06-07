#!/bin/bash

#looks cool!

until [[ $input = x ]]
do

echo "Palindrome Checker"
echo -n "Enter word: " 
read word

word=$(echo "$word" | tr '[:upper:]' '[:lower:]')

pos=${#word}
backword=""
while [ $pos -gt 0 ]
do
  clear
  ((pos--))
  backword=$backword${word:$pos:1}
  echo "$word"
  echo "$backword"
  sleep 1
done

echo -n "Result: "
[[ $word = $backword ]] && echo "True" || echo "False"

echo "(n)ew word or e(x)it"
read input
done

echo "Exiting Palindrome Checker ... "
exit
