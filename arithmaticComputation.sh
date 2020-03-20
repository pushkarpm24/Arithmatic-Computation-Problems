#!/bin/bash -x

#Problem Statement ->  Compute a%b+c
#Author -> Pushkar Morey
#Date -> 20/03/2020

read -p "Enter first number to perform opertion :" numberOne
read -p "Enter second number to perform operation :" numberTwo
read -p "Enter third number to perform operation :" numberThree

#FIRST OPERATION AS GIVEN
resultOne=$(( $numberOne + $numberTwo * $numberThree ))
echo "First result= $resultOne"

#SECOND OPERATION AS GIVEN
resultTwo=$(( $numberOne * $numberTwo + $numberThree ))
echo "Second result= $resultTwo"

#THIRD OPERATION AS GIVEN
resultThree=$(( $numberThree + $numberOne / $numberTwo ))
echo "Third result= $resultThree"

#FOURTH OPERATION AS GIVEN
resultFour=$(( $numberOne % $numberTwo + $numberThree ))
echo "Fourth result= $resultThree"
