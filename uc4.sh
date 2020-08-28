#!/bin/bash -x
isFullTime=1
isPartTime=2
randomCheck=$(( RANDOM%3 ))
wagePerHour=20
case $randomCheck in
	$isFullTime)
         echo "Employee is present $isPresent";
         workHrs=8;
         dailyWage=$((wagePerHour*workHrs));
         echo "$dailyWage"
	;;
        $isPartTime)
         echo "Employee is present $isPresent";
         workHrs=4;
         dailyWage=$((wagePerHour*workHrs));
         echo "$dailyWage";
	 ;;
	*)
        echo "Employee is absent $randomCheck";
	;;
esac
