#!/bin/dash
echo "\033[47;34m Address & Comments & White Space test & -f \033[0m" 
echo '3q' > commandsFile
seq 10 21 | 2041 slippy '  /1$/  ,   /^2/    d # comment' >case.txt
seq 10 21 | python3 -s -S slippy '  /1$/  ,   /^2/    d # comment' > test.txt
result=$(diff -c case.txt test.txt)
if [ -z "$result" ];then
   echo "\033[32mtest_1 (seq 10 21 | python3 -s -S slippy '  /1$/  ,   /^2/    d # comment') pass\033[0m" 
   rm case.txt
   rm test.txt
   exit 0
else
   echo "\033[31mtest_1 (seq 10 21 | python3 -s -S slippy '  /1$/  ,   /^2/    d # comment') failed\033[0m" 
   echo "your output is:"
   myoutput=$(cat test.txt)
   echo "\033[36m$myoutput\033[0m"
   echo "the correct output is:" 
   case=$(cat case.txt)
   echo "\033[32m$case\033[0m"
   echo "The comparison result is"
   result_e=$(echo "$result" | sed -e 's/^\*.*//g' | sed -e 's/^-.*//g')
   result_color=$(echo "$result_e" |grep -E '[A-Za-z0-9+-]+')
   echo "\033[31m$result_color\033[0m"
   rm case.txt
   rm test.txt
   exit 1
fi

