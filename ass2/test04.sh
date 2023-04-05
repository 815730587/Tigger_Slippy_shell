#!/bin/dash
echo "\033[47;34m -n & command [q,p,d,s] test \033[0m" 
seq 10 20 | 2041 slippy -n '3q' >case.txt
seq 10 20 | python3 -s -S slippy -n '3q' > test.txt
result=$(diff -c case.txt test.txt)
if [ -z "$result" ];then
   echo "\033[32mtest_1 (seq 10 20 | python3 -s -S slippy -n '3q') pass\033[0m" 
else
   echo "\033[31mtest_1 (seq 10 20 | python3 -s -S slippy -n '3q') failed\033[0m" 
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
seq 10 20 | 2041 slippy -n '3p' > case.txt
seq 10 20 | python3 -s -S slippy -n '3p' > test.txt
result=$(diff -c case.txt test.txt)
if [ -z "$result" ];then
   echo "\033[32mtest_2 (seq 10 20 | python3 -s -S slippy -n '3p') pass\033[0m" 
else
   echo "\033[31mtest_2 (seq 10 20 | python3 -s -S slippy -n '3p') failed\033[0m" 
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
seq 10 20 | 2041 slippy -n '3d' > case.txt
seq 10 20 | python3 -s -S slippy -n '3d' > test.txt
result=$(diff -c case.txt test.txt)
if [ -z "$result" ];then
   echo "\033[32mtest_3 (seq 10 20 | python3 -s -S slippy -n '3d') pass\033[0m" 
else
   echo "\033[31mtest_3 (seq 10 20 | python3 -s -S slippy -n '3d') failed\033[0m" 
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
seq 100 111 | 2041 slippy -n '/1.1/s/1/-/g' > case.txt
seq 100 111 | python3 -s -S slippy -n '/1.1/s/1/-/g' > test.txt
result=$(diff -c case.txt test.txt)
if [ -z "$result" ];then
   echo "\033[32mtest_4 (seq 100 111 | python3 -s -S slippy -n '/1.1/s/1/-/g') pass\033[0m" 
else
   echo "\033[31mtest_4 (seq 100 111 | python3 -s -S slippy -n '/1.1/s/1/-/g') failed\033[0m" 
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

