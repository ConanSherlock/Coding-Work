/* Program that asks the user whether they want to calculate the sum or product of number 1 to n*/

#include<stdio.h>
#include<math.h>

int main(){
	int n,sum,i;
	char sum_product;

	printf("Please enter the number n to use up to: ");
	scanf("%d",&n);

	printf("Please enter if you want to sum(s) or product(p):");
	scanf(" %c",&sum_product);
	getchar();
	sum_product != 's';

	while((sum_product != 's') && (sum_product != 'p')){
		printf("Please enter valid input. You entered %c. Try again: ",sum_product);
		scanf(" %c",&sum_product);
		getchar();
	}

	if (sum_product == 's'){
		sum = 0;
	}
	else{
		sum = 1;
	}

	for ( i = 1; i <= n; i++){
		switch (sum_product){
		case 's':
			sum = sum + i;
			break;
		case 'p':
			sum = sum * i;
			break;
		default:
			printf("Invalid input!\n");
			break;
		}
	}

	if(sum_product == 's'){
		printf("The sum of all integers from 1 to %d is %d\n",n,sum);
	}
	else{
		printf("The product of all integers from 1 to %d is %d\n",n,sum);
	}

	return 0;
}