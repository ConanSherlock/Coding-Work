# A guessing game where you guess a number from 1 to 100. The game will tell you if you guess too high or too low and your number of guesses
import random

check = 'y'
random.seed()
tries = 0
number = random.randint(0,100)
prev_number = '/0'

while(check=='y'):
    print "Enter your guess now: "
    guess = input()
    
    if guess == number:
        tries+=1
        print "Congratulations! You got the correct answer, the number was " +str(number)+ ". You guessed " + str(tries) + " times."
        
        print "If you would like to try again type y if not enter any value: "
        check = raw_input()
        
        tries = 0
        prev_number = '/0'
        
    elif guess == prev_number:
        print "You guessed the same number twice try again"
    elif guess < number:
        tries+=1
        print "Too small! " + str(tries) + " guess so far."
        prev_number = guess
    elif guess > number:
        tries+=1
        print "Too large! " + str(tries) + " guess so far."
        prev_number = guess