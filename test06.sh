#!/bin/dash
echo "test tigger:rm add commit"
if [ -e .tigger ];then
   rm -r .tigger
fi
./tigger-init
echo 'touch a b'
touch a b
echo 'echo 0 > a'
echo 0 > a
echo 'echo 1> b'
echo 1> b
echo './tigger-add a b'
./tigger-add a b
echo './tigger-commit -m "commit 0"'
./tigger-commit -m "commit 0"
echo 'rm a'
rm a
echo './tigger-commit -m "commit 1"'
./tigger-commit -m "commit 1"
echo './tigger-add a'
./tigger-add a
echo './tigger-commit -m "commit 2"'
./tigger-commit -m "commit 2"
echo './tigger-rm --cached b'
./tigger-rm --cached b
echo './tigger-commit -m "commit 3"'
./tigger-commit -m "commit 3"
echo './tigger-rm b'
./tigger-rm b
echo './tigger-add b'
./tigger-add b
echo './tigger-rm b'
./tigger-rm b 
echo './tigger-commit -m "commit 4"'
./tigger-commit -m "third commit"
echo './tigger-rm '
./tigger-rm b



rm -r .tigger