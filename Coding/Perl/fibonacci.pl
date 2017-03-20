# Script to output the first n numbers of the fibonacci number sequence
#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use 5.010;

my @list = ();
my $times = 100;

@list = &fibonacci($times);

print "@list\n";

sub fibonacci(){
    my $num=$_[0];
    my $i=0;
    my @list=(0,1);
    
    while($i<($num-1)){
        push @list, $list[$i]+$list[$i+1];
        $i++;
    } 
    return @list;
}