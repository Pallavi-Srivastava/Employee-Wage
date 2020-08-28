#! /bin/bash -x
isFullTime=1
isPartTime=2
wagePerHour=20
numWorkingDays=20
TotalHrs=120
day=0
hrs=0
while (( day<=numWorkingDays && hrs<=TotalHrs ))
do
	randomCheck=$(( RANDOM%3 ))
	(( day++ ))
	echo $day
case $randomCheck in
     $isFullTime)
         echo "Employee is present $isFullTime"
         workHrs=8
         ;;
     $isPartTime)
           echo "Employee is Present $ispartTime"
            workHrs=4
             ;;
             *)
            echo "Employee is Not Present"
            ;;
	esac
hrs=$((hrs+workHrs))
done
TotalWage=$((wagePerHour*hrs));

