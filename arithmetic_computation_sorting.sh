#!/bin/bash

#Welcome Message

echo "Welcome to Sorting Arithmetic Computaion Problem";
echo "================================================";
printf "\n";

#Getting Three Inputs from User

echo "You have to enter three numeric values for Arithmetic Computations"
printf "\n";

echo "Enter first value : ";
read a;

echo "Enter second value : ";
read b;

echo "Enter third value : ";
read c;


#Declaring Dictionary
declare -A dict

#Computing a+b*c
result1=$(( a+b*c ));

#Computing a*b+c
result2=$(( a*b+c ));

#Computing c+a/b
result3=`echo $c | awk '{ print $1+$a/$b }'`;

#Computing a%b+c
result4=`echo $c | awk '{ print $a%$b+$1 }'`;

#Stroring results in Dictionary for every Computation
dict[1]=$result1;
dict[2]=$result2;
dict[3]=$result3;
dict[4]=$result4;

#Read Values of Dictionary
echo ${dict[@]};


#Sorting results in Descending Order


#geting size of dictionary
size=${#dict[@]};

for (( i=1; i<=$size; i++ ))
do
	for (( j=$(( i+1 )); j<=$size; j++ ))
	do
		if [ ${dict[$i]} -lt ${dict[$j]} ]
		then
			 temp=${dict[$i]}
		         dict[$i]=${dict[$j]}
	            	 dict[$j]=$temp

		fi
	done
done

printf "\n";
echo "Computation Result in Descending Order ";
echo ${dict[@]};
echo "======================================="

