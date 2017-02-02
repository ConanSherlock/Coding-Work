# Reverses the order of an an array and prints the array at the start and the end
use List::Util qw( min max );
my @elements = (5,15,23,68,91,12);
print "My list is  \t\t @elements\n";
my @r_elements = reverse_ele(@elements);
print "My reversed list is \t@r_elements\n";
my @r_eles = reverse @elements;
print "Built in perl version is @r_eles\n";

sub reverse_ele(){
    my @param=@_;
    my $size=@param;
    for($i=0;$i<=($size/2);$i++){
        $j=$param[$i];
        $param[$i]=$param[$size-$i];
        $param[$size-$i]=$j;
    }
    return @param;
}