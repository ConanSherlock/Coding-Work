# Finds the element in the array that has the maximum value
use List::Util qw( min max );
my @elements = (5,15,23,68,91,12,35,46,81,3,12345,100,513,214,79,651,5,17,54,89);
my $max = max @elements;
my $largest = max_ele(@elements);
print "Built in function \t $max \n";
print "My function \t\t $largest\n";

sub max_ele(){
    my @param=@_;
    my $k = 0;
    my $size=@param;
    for($i=0;$i<$size;$i++){
        $j=$param[$i];
        if($j>$k){
            $k=$j;
        }
    }
    return $k;
}