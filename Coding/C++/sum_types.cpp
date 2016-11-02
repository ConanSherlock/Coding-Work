#include<iostream>

using namespace std;

int recursive(int [], int, int);
int for_loop(int [],int);
int while_loop(int [],int);

int main(){
	int elements[] = {1,2,3,4,5,6,7,8,9,10};//{5,15,23,68,91,12,35,46,81,3,12345,100,513,214,79,651,5,17,54,89};
	int n = sizeof(elements)/sizeof(int)-1;
	int sum = 0;
	sum = recursive(elements, n, sum);
	cout << sum << " is the recursive answer.\n";
	sum = for_loop(elements, n);
	cout << sum << " is the for loop answer.\n";
	sum = while_loop(elements, n);
	cout << sum << " is the while loop answer.\n";
	return 0;
}

int recursive(int param[], int size, int sum){
	if(size>=0){
		sum += param[size];
	} else{
		return sum;
	}
	size--;
	return recursive(param, size, sum);
}

int for_loop(int param[], int size){
	int i, sum = 0;
	
	for(i=0;i<=size;i++){
		sum += param[i];
	}
	return sum;
}

int while_loop(int param[],int size){
	int i = 0, sum = 0;

	while(i <= size){
		sum+=param[i];
		i++;
	}
	return sum;
}