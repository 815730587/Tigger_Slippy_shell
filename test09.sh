#!/bin/dash
echo "test tigger:rm add show status"
if [ -e .tigger ];then
   rm -r .tigger
fi
./tigger-init

echo 'echo 1 >a
./tigger-add a
./tigger-commit -m 0
./tigger-rm a
./tigger-status
./tigger-commit -m 1
./tigger-status
echo 2 >a
./tigger-status
./tigger-commit -m 2
./tigger-add a
./tigger-commit -m 2
./tigger-rm a
./tigger-commit -m 3
./tigger-show :a
./tigger-show 0:a
./tigger-show 1:a
./tigger-show 2:a
./tigger-show 3:a
./tigger-show 4:a
./tigger-show 4:b
./tigger-show 4:c
./tigger-show 0:b
./tigger-show :b'


echo 1 >a
./tigger-add a
./tigger-commit -m 0
./tigger-rm a
./tigger-status
./tigger-commit -m 1
./tigger-status
echo 2 >a
./tigger-status
./tigger-commit -m 2
./tigger-add a
./tigger-commit -m 2
./tigger-rm a
./tigger-commit -m 3
./tigger-show :a
./tigger-show 0:a
./tigger-show 1:a
./tigger-show 2:a
./tigger-show 3:a
./tigger-show 4:a
./tigger-show 4:b
./tigger-show 4:c
./tigger-show 0:b
./tigger-show :b





 rm -r .tigger