#!/bin/bash
# Author: poornesh2317 (24MEI10103)

read -p "What is your name? " NAME
read -p "What is your favorite open-source project? " PROJECT
read -p "Why do you support open-source software? " REASON

echo "================================================================================"
echo "My name is $NAME, and I believe in the power of open-source software."
echo "My favorite project is $PROJECT, which has made a significant impact on my life."
echo "I support open-source software because $REASON."
echo "================================================================================"
echo "My Open Source Manifesto" > "${NAME}.txt"
echo "My name is $NAME, and I believe in the power of open-source software."
>> "${NAME}.txt"
echo "My favorite project is $PROJECT, which has made a significant impact on my life."
>> "${NAME}.txt"
echo "I support open-source software because $REASON."
>> "${NAME}.txt"