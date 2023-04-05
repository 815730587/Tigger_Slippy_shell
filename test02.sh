#!/bin/dash
if [ -e .tigger ];then
   rm -r .tigger
fi
echo "test tigger-commit"
./tigger-init
echo 0 > a
echo 1 > b
echo 2 > c 
echo "./tigger-add a b c"
./tigger-add a b c
echo "./tigger-commit -m 'first commit'"
./tigger-commit -m 'first commit'
echo "ls .tigger/index/.commit-0"
ls .tigger/index/.commit-0
rm -r .tigger