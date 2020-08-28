#!/bin/bash -x
isFullTime=1
isPartTime=2
wagePerHour=20
numWorkingDays=20
TotalHrs=120
day=0
hrs=0

function workHrs()
{
        case $1 in
          $isFullTime)
                workHrs=8
                ;;
           $isPartTime)
                workHrs=4
                ;;
                *)
                workHrs=0
                ;;
                esac
                echo $workHrs
}
function dailyWage()
{
	timeHrs=$1
	dailyIncome=$((wagePerHour*timeHrs))
	echo $dailyIncome
}
while (( day<=numWorkingDays && hrs<=TotalHrs ))
do
    randomCheck=$(( RANDOM%3 ))
    EmployeeHrs=$(workHrs  $randomCheck)
    hrs=$(($hrs+$EmployeeHrs))
    array[day]=$(dailyWage $EmployeeHrs)
    ((day++))
done
TotalWage=$((wagePerHour*hrs));
DailyIncome="${array[@]}"
