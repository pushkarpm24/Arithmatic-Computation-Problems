#!/bin/bash -x

#Problem Statement ->  Compute a%b+c
#Author -> Pushkar Morey
#Date -> 20/03/2020

declare -A resultStore
resultStore=([1]=0 [2]=0 [3]=0 [4]=0)

declare -a arrayValues

read -p "Enter first number to perform opertion :" numberOne
read -p "Enter second number to perform operation :" numberTwo
read -p "Enter third number to perform operation :" numberThree

#FIRST OPERATION AS GIVEN
resultOne=$(( $numberOne + $numberTwo * $numberThree ))
resultStore[1]=$resultOne

#SECOND OPERATION AS GIVEN
resultTwo=$(( $numberOne * $numberTwo + $numberThree ))
resultStore[2]=$resultTwo

#THIRD OPERATION AS GIVEN
resultThree=$(( $numberThree + $numberOne / $numberTwo ))
resultStore[3]=$resultThree

#FOURTH OPERATION AS GIVEN
resultFour=$(( $numberOne % $numberTwo + $numberThree ))
resultStore[4]=$resultFour

for (( i=1; i<=${#resultStore[@]}; i++ ))
		do
				arrayValues[i]=${resultStore[$i]}

		done

echo "keys of Dictionary :"${!resultStore[@]}
echo "values of Dictionry :"${resultStore[@]}
echo "***************************"
echo "Array values :"${arrayValues[@]}
