#!/bin/bash -x

#Problem Statement ->  Compute a%b+c
#Author -> Pushkar Morey
#Date -> 20/03/2020

declare -A resultStore
resultStore=([result1]=0 [result2]=0 [result3]=0 [result4]=0)

read -p "Enter first number to perform opertion :" numberOne
read -p "Enter second number to perform operation :" numberTwo
read -p "Enter third number to perform operation :" numberThree

#FIRST OPERATION AS GIVEN
resultOne=$(( $numberOne + $numberTwo * $numberThree ))
resultStore[result1]=$resultOne

#SECOND OPERATION AS GIVEN
resultTwo=$(( $numberOne * $numberTwo + $numberThree ))
resultStore[result2]=$resultTwo

#THIRD OPERATION AS GIVEN
resultThree=$(( $numberThree + $numberOne / $numberTwo ))
resultStore[result3]=$resultThree

#FOURTH OPERATION AS GIVEN
resultFour=$(( $numberOne % $numberTwo + $numberThree ))
resultStore[result4]=$resultFour

echo ${!resultStore[@]}
echo ${resultStore[@]}
