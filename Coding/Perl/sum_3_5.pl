# Program that will ask a user for a number(n) and then sum the numbers from 1 to n

print "Hello user please enter the number n to sum from 1 to n: ";
chomp($n=<>);

$sum = 0;

for($i=1;$i<=$n;$i++){
    if($i%3 == 0 or $i%5 == 0 ){
        $sum += $i;
    }
}

print "The sum of the numbers 1 to n that have factors of the numbers 3 or 5 is $sum."