// Checks if a word is a palindrome or not
#include<iostream>
#include<algorithm>
#include<string>

using namespace std;

void palindrome(string, int);

int main(){
    string str1 = "Navan", str2= "Cavan";
    string str3 = "Navvan", str4= "Cavvan";

    int index1 = 4;
    int index2 = 4;

    palindrome(str1,index1);
    palindrome(str2,index2);
    palindrome(str3,index1+1);
    palindrome(str4,index1+1);


    return 0;
}

void palindrome(string param, int size){
    string param_org = param;

    transform(param.begin(), param.end(), param.begin(), ::toupper);

    cout << param_org << ": ";

    if (param == string(param.rbegin(), param.rend())) {
        cout << param_org << " is a palindrome\n";
    } else {
        cout << param_org << " is not a palindrome\n";
    }
}