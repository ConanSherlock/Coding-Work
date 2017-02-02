# This is a guessing game to find the value of a random number between 1 and 100. The game will tell your current guess number and whether your guess was too high or low
# The user can also guess the same value two or more times without penalty

$number = int(rand(99)) + 1;
$repeat = "y";
$prev_guess = '/0';
$tries = 0;


while($repeat eq "y"){
    print "Please enter your guess now: ";
    chomp($guess=<>);
    $guess = int($guess);
    
    if( $guess== $number ){
        $tries++;
        print "Congratulation! You have guessed the correct number $number. It took you $tries to guess the correct answer.\n\n Would you like to play again?(y/any)";
        chomp($repeat=<>);
        $number = int(rand(99)) + 1;
        $prev_guess = '/0';
        $tries = 0;
    } elsif ( $guess == $prev_guess ) {
        print "You made the same guess in a row, $prev_guess. Try another number.\n";
    } elsif ( $guess < $number ) {
        $tries++;
        print " Too small! You've guessed $tries.\n";
        $prev_guess = $guess;
    } elsif ( $guess > $number ) {
        $tries++;
        print " Too large! You've guessed $tries.\n";
        $prev_guess = $guess;    
    }
}