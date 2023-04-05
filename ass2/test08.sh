#!/bin/dash
echo "\033[47;34m  Multiple Commands test & -f \033[0m" 
seq 1 5 | 2041 slippy '/2/d;4q' >case.txt
seq 1 5 | python3 -s -S slippy '/2/d;4q' >test.txt
result=$(diff -c case.txt test.txt)
if [ -z "$result" ];then
   echo "\033[32mtest_1 (seq 1 5 | python3 -s -S slippy '/2/d;4q') pass\033[0m" 
else
   echo "\033[31mtest_1 (seq 1 5 | python3 -s -S slippy '/2/d;4q') failed\033[0m" 
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
#-----------------------------------------------------
seq 1 100 | 2041 slippy -n '1,/.1/p;/5/,/9/s/.//;/.2/,/.9/p;85q' >case.txt
seq 1 100 | python3 -s -S slippy -n '1,/.1/p;/5/,/9/s/.//;/.2/,/.9/p;85q' >test.txt
result=$(diff -c case.txt test.txt)
if [ -z "$result" ];then
   echo "\033[32mtest_2 (seq 1 100 | python3 -s -S slippy -n '1,/.1/p;/5/,/9/s/.//;/.2/,/.9/p;85q') pass\033[0m" 
else
   echo "\033[31mtest_2 (seq 1 100 | python3 -s -S slippy -n '1,/.1/p;/5/,/9/s/.//;/.2/,/.9/p;85q') failed\033[0m" 
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
#-----------------------------------------------------
echo '$q;/2/d' > commandsFile
seq 1 5 | 2041 slippy -f commandsFile >case.txt
seq 1 5 | python3 -s -S slippy -f commandsFile >test.txt
result=$(diff -c case.txt test.txt)
if [ -z "$result" ];then
   echo "\033[32mtest_3 (seq 1 5 | python3 -s -S slippy -f commandsFile) pass\033[0m" 
else
   echo "\033[31mtest_3 (seq 1 5 | python3 -s -S slippy -f commandsFile) failed\033[0m" 
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
rm commandsFile