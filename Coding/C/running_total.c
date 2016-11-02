#include<stdio.h>

int running_total(int [], int, int);

int main(){
	int elements[] = {1,2,3,4,5,6,7,8,9,10};//{5,15,23,68,91,12,35,46,81,3,12345,100,513,214,79,651,5,17,54,89};
	int n = sizeof(elements)/sizeof(int)-1;
	int sum = 0;
	sum = running_total(elements, n, sum);
	printf("%d is the final answer!\n",sum);
	return 0;
}

int running_total(int param[], int size, int sum){
	printf("%d is the running total.\n",sum);
	if(size>=0){
		sum += param[size];
	} else{
		return sum;
	}
	size--;
	return running_total(param, size, sum);
}