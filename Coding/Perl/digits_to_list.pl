# Takes a number and returns a list of its digits
#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use 5.010;

my @list = ();
my $number = 1234567890;

@list = &digits_to_list($number);

print "$number\n";
print "@list\n";

sub digits_to_list(){
    my $num = $_[0];
    my @list = ();
    
    while($num>0){
        push @list, $num%10;
        $num=($num-$num%10)/10;
    } 
    return reverse @list;
}