/* Program that asks the user for a number and calculates the sum or product from 1 to the entered number */

#include<iostream>
#include<math.h>
using namespace std;

int main(){
    int n,sum,i;
    char sum_product;

    sum = 0;

    cout<<"Hello user please enter the number n: ";
    cin>>n;

    cout<<"Enter if you want the sum(s) or product(p):";
    cin>>sum_product;
    getchar();

    while((sum_product != 's') && (sum_product != 'p')){
        cout<<"Incorrect input! You input " << sum_product <<". Please try again:";
        cin>>sum_product;
        getchar();
    }

    if (sum_product == 'p'){
        sum = 1;
    }

    for (i = 1; i <= n; i++){
        switch(sum_product){
        case 's':
            sum = sum + i;
            break;
        case 'p':
            sum *= i;
            break;
        default:
            cout<<"Invalid input!\n";
        }
    }

    if(sum_product == 's'){
        cout<<"The sum of the numbers 1 to " << n << " is: " << sum << " \n";
    }
    else{
        cout<<"The product of the numbers 1 to " << n << " is: " << sum << " \n";
    }

    return 0;
}