/* Guessing game where the user tries to guess a number and the program will say too large or too small and record the number of tries */
#include<stdio.h>
#include<stdlib.h>

int main(){
	int number,guess,prev_guess,tries;
	char repeat_check = 'y';

	printf("Hello user! This is a game to try and guess the value of a random number generated.");
	printf("You will be told Too large! if you guess too high or Too small! if you do not guess high enough.\n");

	number = rand();
	tries = 0;
	prev_guess = '/0';

	while(repeat_check=='y'){
		printf("Please enter your guess now: ");
		scanf("%d",&guess);

		if(guess==number){
			tries++;
			printf("Correct! The number was %d and you took %d guesses. Would you like to play again? ",number,tries);
			scanf(" %c",&repeat_check);
			getchar();
			number = rand();
			tries=0;
			prev_guess='/0';
		}
		else if (guess==prev_guess){
			printf("You re-entered the same number twice try again.\n");
		}
		else if(guess>number){
			tries++;
			printf("Too large! %d guesses so far.\n",tries);
		}
		else if (guess<number){
			tries++;
			printf("Too low! %d guesses so far.\n",tries);
		}
		prev_guess = guess;		
	}
}