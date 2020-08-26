#!/bin/bash -x
read -p "Number " n1 n2
if [ $n1 -gt $n2 ]
then
echo " $n1 is greater "
elif [ $n1 -lt $n2 ]
then
echo " $n2 is greater "
else
echo " $n1 and $n2 is equal "
fi
