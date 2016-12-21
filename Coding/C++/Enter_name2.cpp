/* Program that asks the user for their name and welcomes them with their name*/

#include<iostream>
#include <string>

using namespace std;

int main()
{
    string name;

    cout<<"Hello user please enter your name: ";
    cin>>name;
    cout<< "Welcome to the program " << name <<"!\n";

    return 0;
}