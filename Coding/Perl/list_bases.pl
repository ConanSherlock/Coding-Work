# Adds, subtracts and multiplies numbers in different number bases and creates a digit-list representation of them
# !/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Math::BaseCalc;
use 5.010;

my $b2 = Math::BaseCalc->new( digits => [0..1] );
my $b8 = Math::BaseCalc->new( digits => [0..7] );
my $b16 = Math::BaseCalc->new( digits => [0..9, 'A' .. 'F'] );

my $number1 = 243;
my $number2 = 189;
my @digit_list1 = ($number1);
my @digit_list2 = ($number2);
my @sum_digit_list = ();
my @sub_digit_list = ();
my @mult_digit_list = ();
my @bases_Hash = ($b2,$b8,$b16);
my @bases_list = (10,2,8,16);

push @digit_list1, &digit_list(\@bases_Hash, $number1);
push @digit_list2, &digit_list(\@bases_Hash, $number2);

print "\nNumber 1\n";
for (my $i = 0; $i < (scalar(@digit_list1)); $i++){
    print "Base $bases_list[$i]: \t$digit_list1[$i]\n";
}

print "\nNumber 2\n";
for (my $i = 0; $i < (scalar(@digit_list2)); $i++){
    print "Base $bases_list[$i]: \t$digit_list2[$i]\n";
}

print "\nNumber 1 + Number 2\n";
@sum_digit_list = &add_lists(\@digit_list1,\@digit_list2,\@bases_Hash);

for (my $i = 0; $i < (scalar(@sum_digit_list)); $i++){
    print "Base $bases_list[$i]: \t$sum_digit_list[$i]\n";
}

print "\nNumber 1 - Number 2\n";
@sub_digit_list = &sub_lists(\@digit_list1,\@digit_list2,\@bases_Hash);

for (my $i = 0; $i < (scalar(@sub_digit_list)); $i++){
    print "Base $bases_list[$i]: \t$sub_digit_list[$i]\n";
}

print "\nNumber 2 - Number 1\n";
@sub_digit_list = &sub_lists(\@digit_list2,\@digit_list1,\@bases_Hash);

for (my $i = 0; $i < (scalar(@sub_digit_list)); $i++){
    print "Base $bases_list[$i]: \t$sub_digit_list[$i]\n";
}


print "\nNumber 1 * Number 2\n";
@mult_digit_list = &mult_lists(\@digit_list1,\@digit_list2,\@bases_Hash);

for (my $i = 0; $i < (scalar(@mult_digit_list)); $i++){
    print "Base $bases_list[$i]: \t$mult_digit_list[$i]\n";
}

sub digit_list(){
    my ($bases_Ref, $num) = @_;
    my @list=();
    
    foreach my $var (@$bases_Ref){
        push @list, $var->to_base($num);
    }
        
    return @list
}

sub add_lists(){
    my ($list1_Ref, $list2_Ref,$bases_Hash_Ref) = @_;
    
    my $number = @$list1_Ref[0]+@$list2_Ref[0];
    my @sum_digit_list = ($number);
    my @bases = @$bases_Hash_Ref;
    
    push @sum_digit_list, &digit_list(\@$bases_Hash_Ref, $number);
    
    return @sum_digit_list;
}

sub sub_lists(){
    my ($list1_Ref, $list2_Ref,$bases_Hash_Ref) = @_;
    
    my $number = @$list1_Ref[0]-@$list2_Ref[0];
    my @sum_digit_list = ($number);
    my @bases = @$bases_Hash_Ref;
    
    push @sum_digit_list, &digit_list(\@$bases_Hash_Ref, $number);
    
    return @sum_digit_list;
}

sub mult_lists(){
    my ($list1_Ref, $list2_Ref,$bases_Hash_Ref) = @_;
    
    my $number = @$list1_Ref[0]*@$list2_Ref[0];
    my @sum_digit_list = ($number);
    my @bases = @$bases_Hash_Ref;
    
    push @sum_digit_list, &digit_list(\@$bases_Hash_Ref, $number);
    
    return @sum_digit_list;
}