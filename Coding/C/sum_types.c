#include<stdio.h>

int running_total(int [], int, int);
int for_sum(int [], int);
int while_sum(int [], int);

int main(){
	int elements[] = {1,2,3,4,5,6,7,8,9,10};//{5,15,23,68,91,12,35,46,81,3,12345,100,513,214,79,651,5,17,54,89};
	int index = sizeof(elements)/sizeof(int)-1;
	int sum = 0;

	sum = running_total(elements, index, sum);
	printf("%d is the answer from recursion.\n",sum);
	
	sum = for_sum(elements, index);
	printf("%d is the answer from for loop.\n",sum);
	
	sum = while_sum(elements, index);
	printf("%d is the answer from while loop.\n",sum);
	
	return 0;
}

int running_total(int param[], int size, int sum){
	if(size>=0){
		sum += param[size];
	} else{
		return sum;
	}
	size--;
	return running_total(param, size, sum);
}

int for_sum(int param[], int size){
	int i, sum = 0;

	for(i=0;i<=size;i++){
		sum += param[i];
	}
	return sum;
}

int while_sum(int param[], int size){
	int i = 0, sum = 0;

	while(i<=size){
		sum += param[i];
		i++;
	}
	return sum;
}