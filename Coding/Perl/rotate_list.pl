# Rotate list without creating a new one. For example [1,2,3,4,5,6] rotated by two becomes [3,4,5,6,1,2].
#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use 5.010;

my @list = [1,2,3,4,5,6];
my $times = 2;

my @rotated_list = &rotate_list(@list, $times);

print "@rotated_list\n";

sub rotate_list(){
    my (@list)=@{$_[0]};
    my $num=$_[1];
    my $i=0;
    
    while($i<$num){
        push @list, shift @list;
        $i++;
    } 
    return @list;
}
