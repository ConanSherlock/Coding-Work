#include<stdio.h>
#include<string.h>
#include<stdlib.h>

void palindrome(char *[], int);

int main(){

	char str1[50]= "Navan", str2[50]= "Cavan";

	char *p = (char *)realloc(str1[0],10*6*sizeof(char));

	int index1 = sizeof(str1)/sizeof(char)-1;
	int index2 = sizeof(str2)/sizeof(char)-1;


	printf("%d %c\n",index1, p[0]);

	return 0;
}
