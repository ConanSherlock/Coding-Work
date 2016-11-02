#include<iostream>
#include<stdlib.h>
using namespace std;

int main(){
	int number,guess,prev_guess,tries;
	char repeat_check = 'y';

	cout << "Hello user! This is a guessing game where you will try and guess a random number. If you guess too high you will be told Too Large! and if you guess too low you will be told Too Small!\n";

	number = rand();
	tries = 0;
	prev_guess = '/0';

	while(repeat_check == 'y'){
		cout << "Enter your guess now: ";
		cin >> guess;
		if(guess==number){
			tries++;
			cout<<"Correct! The number was " << number << " and you took " << tries << " guesses. Would you like to play again?";
			cin>>repeat_check;
			getchar();
			number=rand();
			tries=0;
			prev_guess='/0';
		}
		else if (guess==prev_guess){
			cout<<"You re-entered the same number twice try again.\n";
		}
		else if(guess>number){
			tries++;
			cout<<"Too large! "<< tries << " guesses so far.\n";
		}
		else if (guess<number){
			tries++;
			cout<<"Too low! " << tries << " guesses so far.\n";
		}
		prev_guess=guess;
	}
	return 0;
}