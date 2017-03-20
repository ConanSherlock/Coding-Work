# Script to mix two lists together with the mixed list alterenating elements between the lists
use List::MoreUtils qw(zip);
my @list1 = [a,b,c];
my @list2 = [1,2,3];

mix_lists(@list1, @list2);

sub mix_lists(){
    my (@part1)=@{$_[0]};
    my (@part2)=@{$_[1]};
    my @newlist = zip(@part1, @part2);
    print "@newlist\n";
}