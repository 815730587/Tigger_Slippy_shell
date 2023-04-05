#!/bin/dash
if [ -e .tigger ];then
   rm -r .tigger
fi
echo "test tigger-add"
./tigger-init
echo 0 > a
echo 1 > b
echo 2 > c 
echo "./tigger-add a b c"
./tigger-add a b c
echo "ls .tigger/index"
ls .tigger/index
echo "Test the error reporting function of tigger-add"
echo "./tigger-add e"
./tigger-add e
rm -r .tigger