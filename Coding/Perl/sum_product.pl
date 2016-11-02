# Program that will ask a user for a number(n) and then ask if they want get the sum or product of the numbers from 1 to n

print "Hello user please enter the number n to sum from 1 to n: ";
chomp($n=<>);

print "Please enter if you want the sum(s) or the product(p) of the numbers:";
chomp($check=<>);

while($check ne 's' and $check ne 'p'){
    print "You entered an invalid value: $check. Please try again with either s or p: ";
    chomp($check=<>);
}

if($check eq 'p'){
    $sum = 1;
}
else{
    $sum = 0;
}

for($i=1;$i<=$n;$i++){
    if($check eq 's' ){
        $sum += $i;
    }
    elsif($check eq 'p'){
        $sum *= $i;
    }
    else{
        print "Incorrect input!\n"
    }
}

if($check eq 's'){
    print "The sum of the numbers 1 to n is $sum."
}
else{
    print "The product of the numbers 1 to n is $sum."
}