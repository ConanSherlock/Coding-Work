/* Program to ask the user for their name and greet them */

#include<stdio.h>

main()
{
	char name[20];
	printf("Hello user please enter your name: ");
	scanf("%s",name);
	printf("Welcome to my program %s.\n",name);
	return 0;
}