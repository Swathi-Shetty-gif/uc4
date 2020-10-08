#! /bin/bash 
isFullTime=1
isPartTime=2
empRatePerHour=20
totalSalary=0
numOfWorkingDays=20
for (( day=1; day<=$numOfWorkingDays; day++ ))
do

	randomCheck=$((RANDOM%3)) #random

 	 case $randomCheck in
		$isFullTime )
		empHrs=8
		;;
	 $isPartTime ) 
		empHrs=4
		;;
	* )
		empHrs=0
		;;
esac
salary=$(($empRatePerHour*$empHrs))

totalSalary=$(($totalSalary+$salary))
done
	echo "Total salary is $totalSalary"
