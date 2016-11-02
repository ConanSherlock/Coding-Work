/* Program that prints out the multiplication tables from 1 to 12*/

#include<stdio.h>

int main(){
	int i,n;

	printf("Please enter the number n to generate the table from: ");
	scanf("%d",&n);

	for (i=1; i<=12; i++){
		printf("%d\tx\t%d\t=\t%d\n",n,i,n*i);
	}

	return 0;
}