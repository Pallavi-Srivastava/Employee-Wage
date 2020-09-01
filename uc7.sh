#! /bin/bash -x
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
while (( day<=numWorkingDays && hrs<=TotalHrs ))
do
    randomCheck=$(( RANDOM%3 ))
    (( day++ ))
    EmployeeHrs=$(workHrs  $randomCheck)
    hrs=$(($hrs+$EmployeeHrs))
done
TotalWage=$((wagePerHour*hrs));



