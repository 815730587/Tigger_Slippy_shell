#!/bin/dash
echo "\033[47;34m -f & command [q,p,d,s] test and input *.txt \033[0m" 
echo '3q' > commandsFile
seq 10 20 | 2041 slippy -f commandsFile >case.txt
seq 10 20 | python3 -s -S slippy -f commandsFile > test.txt
result=$(diff -c case.txt test.txt)
if [ -z "$result" ];then
   echo "\033[32mtest_1 (echo '3q' > commandsFile \n seq 10 20 | python3 -s -S slippy -f commandsFile) pass\033[0m" 
else
   echo "\033[31mtest_1 (echo '3q' > commandsFile \n seq 10 20 | python3 -s -S slippy -f commandsFile) failed\033[0m" 
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
echo '3p' > commandsFile
seq 10 20 | 2041 slippy -f commandsFile > case.txt
seq 10 20 | python3 -s -S slippy -f commandsFile > test.txt
result=$(diff -c case.txt test.txt)
if [ -z "$result" ];then
   echo "\033[32mtest_2 (echo '3p' > commandsFile \n seq 10 20 | python3 -s -S slippy -f commandsFile) pass\033[0m" 
else
   echo "\033[31mtest_2 (echo '3p' > commandsFile \n seq 10 20 | python3 -s -S slippy -f commandsFile) failed\033[0m" 
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
echo '3d' > commandsFile
seq 10 20 | 2041 slippy -f commandsFile > case.txt
seq 10 20 | python3 -s -S slippy -f commandsFile > test.txt
result=$(diff -c case.txt test.txt)
if [ -z "$result" ];then
   echo "\033[32mtest_3 (echo '3d' > commandsFile \n seq 10 20 | python3 -s -S slippy -f commandsFile) pass\033[0m" 
else
   echo "\033[31mtest_3 (echo '3d' > commandsFile \n seq 10 20 | python3 -s -S slippy -f commandsFile) failed\033[0m" 
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
echo '/1.1/s/1/-/g' > commandsFile
seq 100 111 | 2041 slippy -f commandsFile > case.txt
seq 100 111 | python3 -s -S slippy -f commandsFile > test.txt
result=$(diff -c case.txt test.txt)
if [ -z "$result" ];then
   echo "\033[32mtest_4 (echo '/1.1/s/1/-/g' > commandsFile \n seq 100 111 | python3 -s -S slippy -f commandsFile) pass\033[0m" 
else
   echo "\033[31mtest_4 (echo '/1.1/s/1/-/g' > commandsFile \n seq 100 111 | python3 -s -S slippy -f commandsFile) failed\033[0m" 
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
echo '/1.1/s/1/-/g' > commandsFile
seq 100 111 > data.txt 
2041 slippy -f commandsFile data.txt > case.txt
python3 -s -S slippy -f commandsFile data.txt > test.txt
result=$(diff -c case.txt test.txt)
if [ -z "$result" ];then
   echo "\033[32mtest_5 (echo '/1.1/s/1/-/g' > commandsFile \n seq 100 111 > data.txt \n python3 -s -S slippy -f commandsFile data.txt) pass\033[0m" 
else
   echo "\033[31mtest_5 (echo '/1.1/s/1/-/g' > commandsFile \n seq 100 111 > data.txt \n python3 -s -S slippy -f commandsFile data.txt) failed\033[0m" 
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
rm data.txt

#-------------------------------------------------

seq 100 111 > data.txt 
2041 slippy '/1.1/s/1/-/g' data.txt > case.txt
python3 -s -S slippy '/1.1/s/1/-/g' data.txt > test.txt
result=$(diff -c case.txt test.txt)
if [ -z "$result" ];then
   echo "\033[32mtest_6 (seq 100 111 > data.txt \n python3 -s -S slippy '/1.1/s/1/-/g' data.txt) pass\033[0m" 
else
   echo "\033[31mtest_6 (seq 100 111 > data.txt \n python3 -s -S slippy '/1.1/s/1/-/g' data.txt) failed\033[0m" 
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
rm data.txt