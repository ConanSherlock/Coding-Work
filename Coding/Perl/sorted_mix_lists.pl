# Script to concatenate two sorted lists together with the new list also being a sorted list
#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use 5.010;

my @list1 = [1,4,6];
my @list2 = [2,3,5];

my @joined_list = &sorted_mix_lists(@list1, @list2);

print "@joined_list\n";

sub sorted_mix_lists(){
    my (@part1)=@{$_[0]};
    my (@part2)=@{$_[1]};
    my $arrsize1 = @part1;
    my $arrsize2 = @part2;
    my $i=0;
    my $j=0;
    my @newlist;
    
    while( $i < $arrsize1 && $j < $arrsize2){ 
        if($part1[$i]>$part2[$j]){
            push @newlist, $part2[$j];
            $j++;
        }
        else{
            push @newlist, $part1[$i];
            $i++;
        }
    }
    
    while ($i < $arrsize1)
    {
        push @newlist, $part1[$i];
        $i++;
    }
    
    while ($j < $arrsize2)
    {
        push @newlist, $part2[$j];
        $j++;
    }
    
    return @newlist;
}
