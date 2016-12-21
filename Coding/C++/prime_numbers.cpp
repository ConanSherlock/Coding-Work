// Finds the prime numbers from 1 to 1000
#include<iostream>
using namespace std;

int main(){
    int i,flag,num;
    num = 2;

    cout<<"The prime numbers are: \n";

    while(num<1000){
        flag=0;
        for(i=2;i<num/2;i++){
            if(num%i==0){
                flag=1;
                break;
            }
        }
        if(flag==0){
            cout<<"\t\t\t"<<num<<"\n";
        }
        num++;
    }
    return 0;
}