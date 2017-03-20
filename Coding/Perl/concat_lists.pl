# Program to concatenate two lists together
my @list1 = [a,b,c];
my @list2 = [1,2,3];

concatenate(@list1, @list2);

sub concatenate(){
    my (@part1)=@{$_[0]};
    my (@part2)=@{$_[1]};
    my @newlist1 = (@part1, @part2);
    print "@newlist1\n";
}