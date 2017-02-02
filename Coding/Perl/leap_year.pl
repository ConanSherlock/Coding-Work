# Finds the and prints the years that are leap year
use POSIX qw(strftime);

$year = (strftime "%Y", localtime())+1;
$i = 0;

while($i<20){

    if($year%400==0){
        print "$year is a leap year.\n";
        $i++;
    }
    elsif(($year%4==0)&&($year%100!=0)){
        print "$year is a leap year.\n";
        $i++;
    }
    $year++;
}