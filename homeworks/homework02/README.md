# Homework 2: Unix shell

This homework will assess your ability to run commands in the shell and make a simple script.

Replace the lines specified in _italics_ with your answers and save as a text file.


## Problem 0

**60 points**

Complete the interactive tutorial.

I did not have any major points of frustration. It went pretty smoothly! One small thing that tripped me up at the beginning was that the man command does not work in vscode. I wasn't sure if I was doing something wrong at first, so maybe noting that in the tutorial would be useful.

## Problem 1

**20 points**

**Write a script that outputs some user and location data and moves that output to a newly created directory**

Make a single script that prints out a file called question01.txt.

This file should contain the following text:

  My username is (your username, but the script needs to work for anyone, not just you)

  My home directory is (your home directory, but the script needs to work for anyone, not just you)

  The contents of the tfcb_2023/lectures/lecture04/ directory are

  (prints the contents of that directory)

This script should also create a directory called homework02, and move question01.txt into the homework02 directory.

An example output answer should be:

My username is campbellm <br>
My home directory is /Users/melody <br>
The contents of the tfcb_2023/lectures/lecture04/ directory are<br>
01-first-steps.md<br>
02-directories<br>
03-redirection<br>
04-vim<br>
05-history<br>
06-scripting<br>
07-more-interactive-shell<br>
README.md<br>
quickref.md<br>
sequence.gb<br>
slides<br>
vader.txt<br>

_Paste your SCRIPT here (not the output)_

```
#!/bin/bash

echo "My username is" `whoami` > question01.txt
echo "My home directory is" $HOME >> question01.txt
echo "The contents of the tfcb_2024/lectures/lecture04/ directory are" >> question01.txt
ls /workspaces/tfcb_2024-copy/lectures/lecture04/ >> question01.txt
mkdir -p homework02
mv question01.txt homework02
```

## Problem 2

**20 points**

**Write a script that uses a loop to output files with specific names**


Make a single script that does the following:

Makes a new directory in homework02 called question02

In that directory, your script should make 25 new files called
file###.txt

the ### should be the numbers from a list you can find here:

tfcb_2023/homeworks/homework02/list.txt

You can make the contents of those files whatever you want (hint: slide 9... )

_Paste your SCRIPT here (not the output)_

```
#!/bin/bash

mkdir -p homework02/question02
for i in `cat list.txt`
do echo $i > homework02/question02/file$i.txt
done
```