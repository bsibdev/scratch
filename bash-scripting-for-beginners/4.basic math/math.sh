#!/bin/bash

#expr command handles math operations

expr 10 - 4 #6

expr 100 \* 4 #400

mynum1=5
mynum2=13

addition=$(expr $mynum1 + $mynum2) #18 

echo "$mynum1 + $mynum2 = $addition"

factor1=4
factor2=100
product=$(expr $factor1 \* $factor2)

echo "$factor1 * $factor2 = $product"