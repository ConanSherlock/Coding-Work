/* Program that asks the user for a number and calculates the multiplication tables for the entered number */

#include<iostream>
#include<math.h>
using namespace std;

int main(){
    int n,i;

    cout<<"Hello user, please enter the number n: ";
    cin>>n;

    for (i = 1; i <= 12; i++){
        cout<< n << "\tx\t" << i << "\t=\t" << n*i << "\n";
    }

    return 0;
}