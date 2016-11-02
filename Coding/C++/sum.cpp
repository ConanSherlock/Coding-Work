/* Program that asks the user for a number and calculates the sum of numbers 
from 1 to the entered number */

#include<iostream>
using namespace std;

int main(){
	int n,sum;

	cout<<"Hello user please enter the number n to sum up to: ";
	cin>>n;

	sum = (n*(n+1))/2;

	cout<<"The sum of the numbers 1 to " << n << " is: " << sum << " \n";

	return 0;
}