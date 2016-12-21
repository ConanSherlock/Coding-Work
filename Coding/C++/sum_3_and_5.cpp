/* Program that asks the user for a number and calculates the sum of numbers from 1 to the entered number */

#include<iostream>
#include<math.h>
using namespace std;

int main(){
    int n,sum,i;

    sum = 0;

    cout<<"Hello user please enter the number n to sum up to: ";
    cin>>n;

    for (i = 0; i <= n; i++){
        if ((i%3 == 0) && (i%5 == 0)){
            sum = sum + i;
        }
    }

    cout<<"The sum of the numbers 1 to " << n << " is: " << sum << " \n";

    return 0;
}