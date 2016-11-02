#include<iostream>

using namespace std;

void check_ele(int [], int, int);

int main(){
	int elements[20] = {5,15,23,68,91,12,35,46,81,3,12345,100,513,214,79,651,5,17,54,89};
	int n = sizeof(elements)/sizeof(int), check = 513;

	check_ele(elements,n,check);
	
	return 0;
}

void check_ele(int param[], int size, int check){
	int i;

	for(i=0;i<size;i++){
		if(param[i]==check){
			cout << check << " is in the array!\n";
			break;
		}
	}
}