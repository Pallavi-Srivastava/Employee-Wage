#!/bin/bash -x
isFullTime=1
isPartTime=2
wagePerHour=20
numWorkingDays=20
for (( day=1; day<=$numWorkingDays;day++ ))
do
randomCheck=$(( RANDOM%3 ))
  case $randomCheck in
        $isFullTime)
         echo "Employee is present Full-time $isFullTime";
         workHrs=8;
        ;;
        $isPartTime)
         echo "Employee is present Part-time $isPartTime";
         workHrs=4;
         ;;
        *)
        echo "Employee is absent $randomCheck";
        ;;
esac
	 dailyWage=$((wagePerHour*workHrs));
         totalWage=$(($totalWage+$dailyWage));
done

