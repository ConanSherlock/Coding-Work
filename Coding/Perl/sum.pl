# Program that will ask a user for a number(n) and then sum the numbers from 1 to n

print "Hello user please enter the number n to sum from 1 to n: ";
chomp($n=<>);

$sum = 0;

for($i=1;$i<=$n;$i++){
    $sum += $i;
}

print "The sum of the numbers 1 to n is $sum."