// Asks the user for their name and then welcomes them
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