/* Program that asks the user for a number and calculates the sum of numbers 
from 1 to the entered number */

#include<stdio.h>

main(){
	int n,sum;

	printf("Please enter the number n to sum up to: ");
	scanf("%d",&n);

	sum = (n*(n+1))/2;
	printf("The sum of all integers from 1 to %d is %d\n",n,sum);

	return 0;
}