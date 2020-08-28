#!/bin/bash -x
isPresent=1
randomCheck=$(( RANDOM%2 ))
wagePerHour=20
if [ $isPresent -eq  $randomCheck ]
then
   echo "Employee is present $isPresent";
	 workHrs=8;
    	 dailyWage=$((wagePerHour*workHrs));
	 echo "$dailyWage";

else
   echo "Employee is absent $randomCheck";
fi
