#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

use Data::Dumper qw(Dumper);

my @words = qw(foo bar zorg moo);

say Dumper \@words;

my @sorted_words = sort @words;

say Dumper \@sorted_words;

#say Dumper sort { $a cmp $b } @words;

my @numbers = (14, 3, 12, 2, 23);
my @sorted_numbers = sort @numbers;
#say Dumper \@sorted_numbers;

my @sorted_numbers_d = sort { $a <=> $b } @numbers;

print "@sorted_numbers_d\n";