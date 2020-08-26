#!/bin/bash -x 
totalsalary=0
isPresent=1
isParttime=2
rate=20
max_hours=20
max_days=20
thours=0
tdays=o
function getEmp() {
	local emphr=$1
	echo $((emphr*rate))
}
while [ $((thours)) -lt $((max_hours)) ] && [ $((tdays)) -lt $((max_days)) ]
do
	random=$(( RANDOM%3 ))
	if [ $random -eq $isPresent ]
	then
		workhour=8
	elif [ $random -eq $isParttime ]
	then
		workhour=4
	else
	echo " The person is absent"
	fi
	((tdays++))
	thours=$((thours+workhour))
	salary=$(( rate*workhour ))
	totalsalary=$((totalsalary+salary))
	dailywage[tdays]="$( getEmp $workhour))"
done
totalworkingsalary=$((totalsalary*tdays ))
echo " Total working hours is $thours  and  Total working days are $tdays  "
echo "Total salary for working days are $totalworkingsalary  "
echo  "Total daily wage is ${dailywage[@]}  "

