// Reverses the order of an array and prints the original order and the new order
#include<iostream>
using namespace std;

void reverse_ele(int [], int);

int main(){
    int elements[] = {5,15,23,68,91,12};
    int largest, n = sizeof(elements)/sizeof(int);
    int i;

    cout<<"The elements are \n\t";

    for(i=0;i<n;i++){
        cout << elements[i] << " ";
    }

    reverse_ele(elements,n);

    cout<<"\nThe reversed elements are \n\t";

    for(i=0;i<n;i++){
        cout << elements[i] << " ";
    }

    return 0;
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