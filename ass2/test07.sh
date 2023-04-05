#!/bin/dash
echo "\033[47;34m -i command [q,p,d,s] test and input *.txt \033[0m" 
echo '3q' > commandsFile
seq 1 5 > case.txt
seq 1 5 > test.txt
2041 slippy -i /[24]/d case.txt 
python3 -s -S slippy -i /[24]/d  test.txt
result=$(diff -c case.txt test.txt)
if [ -z "$result" ];then
   echo "\033[32mtest_1 (seq 1 5 > test.txt  \n python3 -s -S slippy -i /[24]/d  test.txt) pass\033[0m" 
else
   echo "\033[31mtest_1 (seq 1 5 > test.txt  \n python3 -s -S slippy -i /[24]/d  test.txt) failed\033[0m" 
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
#-------------------------------------------------
echo '/[24]/d' > commandsFile
seq 1 5 > case.txt
seq 1 5 > test.txt
2041 slippy -i -f commandsFile case.txt 
python3 -s -S slippy -i -f commandsFile  test.txt
result=$(diff -c case.txt test.txt)
if [ -z "$result" ];then
   echo "\033[32mtest_2 (seq 1 5 > test.txt  \n echo '/[24]/d' > commandsFile \n python3 -s -S slippy -i -f commandsFile  test.txt) pass\033[0m" 
else
   echo "\033[31mtest_2 (seq 1 5 > test.txt  \n echo '/[24]/d' > commandsFile \n python3 -s -S slippy -i -f commandsFile  test.txt) failed\033[0m" 
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