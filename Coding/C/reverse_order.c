#include<stdio.h>

void reverse_ele(int [], int);

int main(){
	int elements[] = {5,15,23,68,91,12};
	int n = sizeof(elements)/sizeof(int);
	int i;

	printf("The elements in the array are \n\t");

	for(i=0;i<n;i++){
		printf("%d ",elements[i]);
	}

	reverse_ele(elements, n);

	printf("\nThe reversed elements in the array are \n\t");

	for(i=0;i<n;i++){
		printf("%d ",elements[i]);
	}
}

void reverse_ele(int param[], int size){
	int j,k;

	size--;

	for(j=0;j<=(size/2);j++){
		k=param[j];
		param[j]=param[size-j];
		param[size-j]=k;
	}
}