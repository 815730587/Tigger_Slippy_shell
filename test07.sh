#!/bin/dash
echo "test tigger:rm add commit"
if [ -e .tigger ];then
   rm -r .tigger
fi
./tigger-init

echo 'echo 1 >a'
echo 1 >a
echo 'echo 2 >b'
echo 2 >b
echo 'echo 3 >c'
echo 3 >c
echo './tigger-add a b c'
./tigger-add a b c
echo './tigger-commit -m "commit 0"'
./tigger-commit -m "first commit"
echo "echo 4 >>a
echo 5 >>b
echo 6 >>c
echo 7 >d
echo 8 >e"
echo 4 >>a
echo 5 >>b
echo 6 >>c
echo 7 >d
echo 8 >e
echo './tigger-add b c d'
./tigger-add b c d
echo 'echo 9 >b
./tigger-rm a
./tigger-rm b
./tigger-rm c
./tigger-rm d
./tigger-rm e
./tigger-rm --cached a
./tigger-rm --cached b
./tigger-rm --cached c
./tigger-rm --cached d
./tigger-rm --cached e
./tigger-rm --force a
./tigger-rm --force e'
echo 9 >b
./tigger-rm a
./tigger-rm b
./tigger-rm c
./tigger-rm d
./tigger-rm e
./tigger-rm --cached a
./tigger-rm --cached b
./tigger-rm --cached c
./tigger-rm --cached d
./tigger-rm --cached e
./tigger-rm --force a
./tigger-rm --force e

rm -r .tigger