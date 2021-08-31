#!/bin/sh

while :
do
echo "Welcome to awesome New phone directory"
echo "1. Add new contact"
echo "2. Display contact number for name"
echo "3. List of contacts"
echo "4. Delete contact"
echo "5  Delete entire directory"
echo "6. EXIT"
read -p "Enter your choice" x
clear
case $x in

        1)read -p "give name " phonebookname
        read -p "give number " phonebooknum
        echo "$phonebookname --> $phonebooknum" >> dir.log;;
        2)read -p "enter name " n
        grep -i $n dir.log;;
        3)if [ -s dir.log ]
        then

 #echo "the list is empty"
                cat dir.log
        else
                #cat dir.log
                echo "the list is empty"
        fi;;
        4)read -p "name of contact to be deleted " n2
        sed -i -e "/$n2/d" dir.log;;
        5)rm -r dir.log
        echo "everything is removed";;
        6)break;;
        *)echo "invalid option";;
esac;
read -p "Anything else Exit to menu " confirm_exit
if [ $confirm_exit -eq 6 ]
then break
fi
done
