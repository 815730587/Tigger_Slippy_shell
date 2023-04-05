#!/bin/dash
echo "test tigger-log"
if [ -e .tigger ];then
   rm -r .tigger
fi
./tigger-init
echo 0 > a
echo 1 > b
echo 2 > c 
echo "./tigger-add a"
./tigger-add a
echo "./tigger-commit -m 'first commit'"
./tigger-commit -m 'first commit'
echo "./tigger-add b c"
./tigger-add b c
echo "./tigger-commit -m 'second commit'"
./tigger-commit -m 'second commit'
echo "./tigger-log"
./tigger-log
rm -r .tigger