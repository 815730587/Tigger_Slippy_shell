#!/bin/dash
echo "\033[47;34m command q test \033[0m" 
seq 1 5 | 2041 slippy '4q' > case.txt
seq 1 5 | python3 -s -S slippy '4q' > test.txt
result=$(diff -c case.txt test.txt)
if [ -z "$result" ];then
   echo "\033[32mtest_1 (seq 1 5 | python3 -s -S slippy '4q') pass\033[0m" 
   rm case.txt
   rm test.txt
   exit 0
else
   echo "\033[31mtest_1 (seq 1 5 | python3 -s -S slippy '4q') failed\033[0m" 
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
rm case.txt
rm test.txt

#-------------------------------------------------
seq 500 600 | 2041 slippy '/^.+5$/q' > case.txt
seq 500 600 | python3 -s -S slippy '/^.+5$/q' > test.txt
result=$(diff -c case.txt test.txt)
if [ -z "$result" ];then
   echo "\033[32mtest_2 (seq 500 600 | python3 -s -S slippy '/^.+5$/q') pass\033[0m" 
   rm case.txt
   rm test.txt
   exit 0
else
   echo "\033[31mtest_2 (seq 500 600 | python3 -s -S slippy '/^.+5$/q') failed\033[0m" 
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

#-------------------------------------------------
yes | 2041 slippy '5q' > case.txt
yes | python3 -s -S slippy '5q' > test.txt
result=$(diff -c case.txt test.txt)
if [ -z "$result" ];then
   echo "\033[32mtest_3 (yes | python3 -s -S slippy '5q') pass\033[0m" 
else
   echo "\033[31mtest_3 (yes | python3 -s -S slippy '5q') failed\033[0m" 
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
fi
rm case.txt
rm test.txt

#-------------------------------------------------
seq 1 5  | 2041 slippy '$q' > case.txt
seq 1 5  | python3 -s -S slippy '$q' > test.txt
result=$(diff -c case.txt test.txt)
if [ -z "$result" ];then
   echo "\033[32mtest_4 (seq 1 5  | python3 -s -S slippy "'$q'") pass\033[0m" 
else
   echo "\033[31mtest_4 (seq 1 5  | python3 -s -S slippy "'$q'") failed\033[0m" 
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
fi
rm case.txt
rm test.txt