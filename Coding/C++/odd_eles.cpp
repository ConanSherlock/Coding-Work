// Prints the elements in the odd number indices
#include<iostream>

using namespace std;

void odd_ele(int [], int);

int main(){	
    int elements[] = {5,15,23,68,91,12,35,46,81,3,12345,100,513,214,79,651,5,17,54,89};
    int n = sizeof(elements)/sizeof(int);

    odd_ele(elements, n);

    return 0;
}

void odd_ele(int param[], int size){
    int i=1;

    printf("The odd elements of the array are");

    while(i<size){
        cout << " " << param[i];
        i+=2;
    }
    cout << "\n";
}