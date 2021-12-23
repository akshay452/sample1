#!/bin/bash -x

isPartTime=1
isFullTime=2
maxHrsInMonth=100
empRatePerHr=20
numOfWorkingDays=20

totalEmpHr=0
totalWorkingDays=0

declare -A dailyWages;
function getWorkHrs()
{
        case $1 in
                                $isFullTime)
                                        empHrs=8
                                ;;
                                $isPartTime)
                                        empHrs=4
                                ;;
                                *)
                                        empHrs=0
                               ;;
        esac
}
function getEmpWage() {
             echo $(($1*$empRatePerHr))
}

while [[ $totalEmpHr -lt $maxHrsInMonth &&
             $totalWorkingDays -lt $numOfWorkingDays ]]
do
        ((totalWorkingDays++))
        empCheck=$((RANDOM%3))
        getWorkHrs $empCheck
        totalEmpHr=$(($totalEmpHr+$empHrs))
        dailyWages["$totalWorkingDays"]=$(($empHrs*$empRatePerHr))
done
totalSalary="$( getEmpWage $totalEmpHr )"
echo ${dailyWages[@]}    #using array

echo ${!dailyWages[@]}   #using dictionary
