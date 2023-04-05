#!/bin/dash
if [ -e .tigger ];then
   rm -r .tigger
fi
echo Create a normal .tigger folder or file
mkdir .tigger
echo "Test the error reporting function of tigger-init"
echo "It should be print tigger-init: error: .tigger already exists"
./tigger-init
echo "delete. tigger file"
rm -r .tigger
echo "Created by tigger-init .tigger library"
echo "It should be print Initialized empty tigger repository in .tigger"
./tigger-init
rm -r .tigger