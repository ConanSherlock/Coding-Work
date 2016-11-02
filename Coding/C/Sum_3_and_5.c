/* Program that asks the user for a number and calculates the sum of numbers from 1 to the entered number that are divisible by 3 and 5 */

#include<stdio.h>
#include<math.h>

int main(){
	int n,sum,i;

	sum = 0;

	printf("Please enter the number n to sum up to: ");
	scanf("%d",&n);

	for ( i = 0; i <= n; i++){
		if ( (i % 3 == 0) && (i % 5 == 0) ){
			sum = sum + i;
		}
	}

	printf("The sum of all integers from 1 to %d that are divisible by 3 or 5 is %d\n",n,sum);

	return 0;
}