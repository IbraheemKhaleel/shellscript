#!/bin/bash
for i in {1..99}
do
	rem=$(($i%2))
	if [ $rem -ne 0 ]
	then
	echo $i
	fi
done  
