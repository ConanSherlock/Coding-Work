#include<stdio.h>

int largest_ele(int [], int);

int main(){
	int elements[] = {5,15,23,68,91,12,35,46,81,3,12345,100,513,214,79,651,5,17,54,89};
	int largest, n = sizeof(elements)/sizeof(int);

	largest = largest_ele(elements, n);

	printf("The largest element in the array is %d.\n",largest);

	return 0;
}

int largest_ele(int param[], int size){
	int i,j,k=0;

	for(i=0;i<size;i++){
		j=param[i];
		if(j>k){
			k=j;
		}
	}
	return k;
}