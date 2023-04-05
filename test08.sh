#!/bin/dash
echo "test tigger:rm status"
if [ -e .tigger ];then
   rm -r .tigger
fi
./tigger-init

echo 'echo a >a
echo b >b
echo c >c'
echo a >a
echo b >b
echo c >c
echo './tigger-add a b c
./tigger-commit -m "commit 0"'
./tigger-add a b c
./tigger-commit -m "commit 0"
echo 'echo d >>a
echo e >>b
echo f >>c
echo g >d
echo h >e'
echo d >>a
echo e >>b
echo f >>c
echo g >d
echo h >e
echo 1> final
echo './tigger-add b c d e
./tigger-rm --cached a c
./tigger-rm --force --cached b
./tigger-rm --force --cached e
./tigger-rm --force d
./tigger-add final 
./tigger-commit -m "commit 1"
echo ii00 > final
./tigger-status'
./tigger-add b c d e
./tigger-rm --cached a c
./tigger-rm --force --cached b
./tigger-rm --force --cached e
./tigger-rm --force d
./tigger-add final 
./tigger-commit -m "commit 1"
echo ii00 > final
./tigger-status

rm -r .tigger