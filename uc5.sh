#!/bin/bash -x

isPartTime=1
isFullTime=2
TotalSalary=0
noofWorkingDays=20
empRateHr=20
for(( day=1; day<=$noofWorkingDays; day++ ))
do
    randoncheck=$((RANDOM%3))
    case $randoncheck in
                        $isPartTime)
                           empHrs=4
                            ;;
                        $isFullTime)
                            empHrs=8
                             ;;
                         *)
                            empHrs=0
                             ;;
esac
salary=$(($empHrs*$empRateHr))
TotalSalary=$(($TotalSalary+$salary))
done
