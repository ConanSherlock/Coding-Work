# Program that will ask a user for a number(n) and then print the times table up to 12 for that number

print "Hello user please enter the number n to generate the table: ";
chomp($n=<>);

for($i=1;$i<=12;$i++){
    print "\t$n\tx\t$i\t=\t".$n*$i."\n";
}
