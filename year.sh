#! /bin/bash -x
read -p "Enter  date, month and year respectively  " d m y
a=$((y-(14-m)/12))
b=$((a+a/4-a/100+a/400))
c=$((m+12*((14-m)/12)-2))
e=$(((d+b+31*c/12)%7))
echo "day of the week is $e "
echo $a
echo $b
echo $c
echo $e 
