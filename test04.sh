#!/bin/dash
echo "test tigger-show"
if [ -e .tigger ];then
   rm -r .tigger
fi
./tigger-init
echo 'echo 1 > a'
echo  1 > a
echo 'echo hello > b'
echo hello > b
echo "./tigger-add a b"
./tigger-add a b
echo "./tigger-commit -m 'first commit'"
./tigger-commit -m 'first commit'
echo 'echo 2 >> a'
echo  2 >> a
echo "./tigger-add a"
./tigger-add a
echo "./tigger-commit -m 'second commit'"
./tigger-commit -m 'second commit'
echo 'echo 3 >> a'
echo  3 >> a
echo "./tigger-add a"
./tigger-add a
echo 'echo 4 >> a'
echo  4 >> a
echo './tigger-show 0:b'
./tigger-show 0:b
echo './tigger-show :b'
./tigger-show :b
echo './tigger-show 0:a'
./tigger-show 0:a
echo './tigger-show 1:a'
./tigger-show 1:a
echo './tigger-show :a'
./tigger-show :a
echo 'cat a'
cat a
rm -r .tigger