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

echo "create a file"; echo ""; touch file; sleep 2; echo "";

# send hello to /dev/null 
echo hello > /dev/null
# create a partition and filesystem
dd if=/dev/zero of=./8MB.img bs=2M count=13
sudo hexdump ./8MB.img | less
sudo mkfs -t ext2 ./8MB.img
sudo mount ./8MB.img /mnt/tmp
mount; df -h
sudo umount /mnt/tmp
sudo mount /mnt/tmp -remount
sudo fsck /mnt/tmp

# create directories inode contains a list of filenames and then link to other inodes 
mkdir dir1 dir2 
echo a > dir1/file1
echo b > dir1/file2
echo c > dir2/fie3
echo d > dir2/file4
ln dir1/file1 dir2/file5

#View inode 
ls -iR dir 

echo "check on kernel system log file and dmesg"; echo ""; less /var/log/kernel.log; sleep 2; echo ""; dmesg | less; sleep 2; echo "";
echo "Check system's runlevel"; echo ""; who -r; sleep 2; echo"";
echo "change direcotry"; echo ""; cd /etc/systemd; sleep 2; echo "";
echo "view all unit's dependencies"; echo ""; systemct1 show -all; sleep 2; echo "";
# get dev-mqueue.mount as a status and display recent information from the unit's journal
systemctl status dev-mqueue.mount
sleep 3
journalctl _SYSTEMD_UNIT=dev-mqueue.mount
sleep 3
echo "check on current jobs"; echo ""; systemctl list-jobs; sleep 2; echo "";
