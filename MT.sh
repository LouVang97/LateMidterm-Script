#!/bin/bash 

cd 
pwd 
echo "create a new diretory"; echo ""; mkdir MidtermScript; sleep 2; echo "";
echo "change directory"; echo ""; cd MidtermScript; sleep 2; echo "";
echo "Create two different files"; echo ""; touch file1.txt file2.txt; sleep 2; echo ""; 
#Add lists into 2 different files
echo "1 2 3">>file1.txt
echo "2 3 5">>file2.txt
echo "define the difference between file1.txt and file2.txt"; echo ""; diff file1.txt file2.txt; sleep 2; echo "";
echo "copy file1.txt into file2.txt"; echo ""; cp file1.txt file2.txt; sleep 2; echo "";
echo "list the contents of directory"; echo ""; ls' sleep 2; echo "";
echo hello > /dev/null
