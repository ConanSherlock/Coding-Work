#include<stdio.h>

void palindrome(char [], int);

int main(){
	char str1[10]= "Navan", str2[10]= "Cavan";
	char str3[10]="Navvan", str4[10]= "Cavvan";

	int index1 = 4;
	int index2 = 4;
	int i;

	palindrome(str1,index1);
	palindrome(str2,index2);
	palindrome(str3,index1+1);
	palindrome(str4,index1+1);


	return 0;
}

void palindrome(char param[], int size){
	int i,flag=0;

	for(i=0;i<=size;i++){
		printf("%c",param[i]);
	}
	printf(": ");

	for(i=0;i<=size/2;i++){
		if(toupper(param[i]) != toupper(param[size-i])){
			printf("It is not a palindrome!\n");
			flag = 1;
			break;
		}
	}
	if(flag == 0){
		printf("It is a palindrome!\n");
	}
}