#! /bin/bash -x
isFullTime=1
isPartTime=2
randomCheck=$(( RANDOM%3 ))
wagePerHour=20
if [ $isFullTime -eq  $randomCheck ]
then
         echo "Employee is present $isPresent";
         workHrs=8;
         dailyWage=$((wagePerHour*workHrs));
         echo "$dailyWage";
elif [ $isPartTime -eq  $randomCheck ]
then
         echo "Employee is present $isPresent";
         workHrs=4;
         dailyWage=$((wagePerHour*workHrs));
         echo "$dailyWage";

else
   echo "Employee is absent $randomCheck";
fi

