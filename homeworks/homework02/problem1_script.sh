#!/bin/bash

echo "My username is" `whoami` > question01.txt
echo "My home directory is" $HOME >> question01.txt
echo "The contents of the tfcb_2024/lectures/lecture04/ directory are" >> question01.txt
ls /workspaces/tfcb_2024-copy/lectures/lecture04/ >> question01.txt
mkdir -p homework02
mv question01.txt homework02