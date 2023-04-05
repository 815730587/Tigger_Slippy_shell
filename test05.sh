#!/bin/dash
echo "test tigger-commit -a"
if [ -e .tigger ];then
   rm -r .tigger
fi
./tigger-init
echo 'echo 1 >a'
echo 1 >a
echo 'echo 2 >b'
echo 2 >b
echo './tigger-add a b'
./tigger-add a b
echo './tigger-commit -m "first commit"'
./tigger-commit -m "first commit"
echo 'echo  2 >>a'
echo  2 >>a
echo './tigger-commit -a -m "second commit"'
./tigger-commit -a -m "second commit"
echo './tigger-show 0:a'
./tigger-show 0:a
echo './tigger-show 1:a'
./tigger-show 1:a
echo './tigger-show :a'
./tigger-show :a

rm -r .tigger