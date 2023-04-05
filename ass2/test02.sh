#!/bin/dash
echo "\033[47;34m command d test \033[0m" 
seq 1 5 | 2041 slippy '4d' > case.txt
seq 1 5 | python3 -s -S slippy '4d' > test.txt
result=$(diff -c case.txt test.txt)
if [ -z "$result" ];then
   echo "\033[32mtest_1 (seq 1 5 | python3 -s -S slippy '4d') pass\033[0m" 
else
   echo "\033[31mtest_1 (seq 1 5 | python3 -s -S slippy '4d') failed\033[0m" 
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
seq 1 50 | 2041 slippy '/.{2}/d' > case.txt
seq 1 50 | python3 -s -S slippy '/.{2}/d' > test.txt
result=$(diff -c case.txt test.txt)
if [ -z "$result" ];then
   echo "\033[32mtest_2 (seq 1 50 | python3 -s -S slippy '/.{2}/d') pass\033[0m" 
else
   echo "\033[31mtest_2 (seq 1 50 | python3 -s -S slippy '/.{2}/d') failed\033[0m" 
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
cat dictionary.txt| head | 2041 slippy '/s$/d' > case.txt
cat dictionary.txt| head | python3 -s -S slippy '/s$/d' > test.txt
result=$(diff -c case.txt test.txt)
if [ -z "$result" ];then
   echo "\033[32mtest_3 (head dictionary.txt | python3 -s -S slippy '/s$/d') pass\033[0m" 
else
   echo "\033[31mtest_3 (head dictionary.txt | python3 -s -S slippy '/s$/d') failed\033[0m" 
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
seq 65 85 | 2041 slippy 'd' > case.txt
seq 65 85 | python3 -s -S slippy 'd' > test.txt
result=$(diff -c case.txt test.txt)
if [ -z "$result" ];then
   echo "\033[32mtest_4 (seq 65 85 | python3 -s -S slippy 'd') pass\033[0m" 
else
   echo "\033[31mtest_4 (seq 65 85 | python3 -s -S slippy 'd') failed\033[0m" 
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
seq 1 5  | 2041 slippy '$d' > case.txt
seq 1 5  | python3 -s -S slippy '$d' > test.txt
result=$(diff -c case.txt test.txt)
if [ -z "$result" ];then
   echo "\033[32mtest_5 (seq 1 5  | python3 -s -S slippy "'$d'") pass\033[0m" 
else
   echo "\033[31mtest_5 (seq 1 5  | python3 -s -S slippy "'$d'") failed\033[0m" 
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
seq 10 21 | 2041 slippy '/1$/,/^2/d' > case.txt
seq 10 21 | python3 -s -S slippy '/1$/,/^2/d' > test.txt
result=$(diff -c case.txt test.txt)
if [ -z "$result" ];then
   echo "\033[32mtest_6 (seq 10 21 | python3 -s -S slippy '/1$/,/^2/d') pass\033[0m" 
else
   echo "\033[31mtest_6 (seq 10 21 | python3 -s -S slippy '/1$/,/^2/d') failed\033[0m" 
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