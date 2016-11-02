/* Program to print out the next 20 leap years. */
#include<stdio.h>
#include<time.h>

int main(){
	int no_leap_years,year;

	time_t t = time(NULL);
	struct tm tm = *localtime(&t);

	year = tm.tm_year+1900;

	no_leap_years = 0;

	while(no_leap_years<20){
		year++;
		if(year%400==0){
			no_leap_years++;
			printf("%d is a leap year. Number: %d\n",year,no_leap_years);
		}
		else if((year%4==0)&&(year%100!=0)){
			no_leap_years++;
			printf("%d is a leap year. Number: %d\n",year,no_leap_years);
		}
	}
	return 0;
}