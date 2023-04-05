#!/bin/dash
echo "\033[47;34m command s test \033[0m" 
seq 10 20 | 2041 slippy 's/[15]/zzz/' >case.txt
seq 10 20 | python3 -s -S slippy 's/[15]/zzz/' > test.txt
result=$(diff -c case.txt test.txt)
if [ -z "$result" ];then
   echo "\033[32mtest_1 (seq 10 20 | python3 -s -S slippy 's/[15]/zzz/') pass\033[0m" 
else
   echo "\033[31mtest_1 (seq 10 20 | python3 -s -S slippy 's/[15]/zzz/') failed\033[0m" 
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
echo "Hello Andrew" | 2041 slippy 's/e//' > case.txt
echo "Hello Andrew" | python3 -s -S slippy 's/e//' > test.txt
result=$(diff -c case.txt test.txt)
if [ -z "$result" ];then
   echo "\033[32mtest_2 (echo \"Hello Andrew\" | python3 -s -S slippy 's/e//') pass\033[0m" 
else
   echo "\033[31mtest_2 (echo \"Hello Andrew\" | python3 -s -S slippy 's/e//') failed\033[0m" 
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
seq 11 19| head | 2041 slippy '5s/1/2/' > case.txt
seq 11 19 | python3 -s -S slippy '5s/1/2/' > test.txt
result=$(diff -c case.txt test.txt)
if [ -z "$result" ];then
   echo "\033[32mtest_3 (seq 11 19 | python3 -s -S slippy '5s/1/2/') pass\033[0m" 
else
   echo "\033[31mtest_3 (seq 11 19 | python3 -s -S slippy '5s/1/2/') failed\033[0m" 
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
seq 100 111 | 2041 slippy '/1.1/s/1/-/g' > case.txt
seq 100 111 | python3 -s -S slippy '/1.1/s/1/-/g' > test.txt
result=$(diff -c case.txt test.txt)
if [ -z "$result" ];then
   echo "\033[32mtest_4 (seq 100 111 | python3 -s -S slippy '/1.1/s/1/-/g') pass\033[0m" 
else
   echo "\033[31mtest_4 (seq 100 111 | python3 -s -S slippy '/1.1/s/1/-/g') failed\033[0m" 
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
seq 1 5  | 2041 slippy 'ss[15]szzzs' > case.txt
seq 1 5 | python3 -s -S slippy 'ss[15]szzzs' > test.txt
result=$(diff -c case.txt test.txt)
if [ -z "$result" ];then
   echo "\033[32mtest_5 (seq 1 5 | python3 -s -S slippy 'ss[15]szzzs') pass\033[0m" 
else
   echo "\033[31mtest_5 (seq 1 5 | python3 -s -S slippy 'ss[15]szzzs') failed\033[0m" 
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
seq 1 100  | 2041 slippy '/5/,/9/s/.//' > case.txt
seq 1 100 | python3 -s -S slippy '/5/,/9/s/.//' > test.txt
result=$(diff -c case.txt test.txt)
if [ -z "$result" ];then
   echo "\033[32mtest_6 (seq 1 100 | python3 -s -S slippy '/5/,/9/s/.//') pass\033[0m" 
else
   echo "\033[31mtest_6 (seq 1 100 | python3 -s -S slippy '/5/,/9/s/.//') failed\033[0m" 
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