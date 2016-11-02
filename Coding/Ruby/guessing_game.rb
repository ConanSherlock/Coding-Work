puts "Hello user! This is a game to guess the number between 1 and 100.\n"
number = rand(1..100)
repeat = 'y'
prev_guess = '/0'
tries = 0

while repeat == 'y'
    puts "Enter your guess now: "
    guess = gets.to_i
    
    if guess == number
        tries+=1
        puts "Congratulations! That is the correct answer. You guessed #{tries} times. Would you like to try again?"
        repeat = gets.chomp
        number = rand(1..100)
        prev_guess = '/0'
        tries = 0
    elsif guess == prev_guess
        puts "You guessed the same number again #{prev_guess}. Try again!\n"
    elsif guess < number
        tries+=1
        puts "Too small! #{tries} guesses so far.\n"
        prev_guess = guess
    elsif guess > number
        tries+=1
        puts "Too large! #{tries} guesses so far.\n"
        prev_guess = guess
    end
end