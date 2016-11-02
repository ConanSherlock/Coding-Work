/* Program to print all the prime numbers from 1 to 10,000 */
#include<stdio.h>

int main(){
	int num,i,flag;

	printf("The prime numbers between from 1 to 10,000 are:\n");
	
	num = 2;

	while(num<10000){
		flag = 0;
		for(i=2;i<(num/2);i++){
			if(num%i==0){
				flag=1;
				break;
			}
		}
		if(flag==0){
			printf("\t\t\t\t\t\t%d\n",num);
		}
		num++;
	}
	return 0;
}