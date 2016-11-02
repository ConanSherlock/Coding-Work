
$flag = 0;
$num = 2;
print "The prime numbers are \n";
while($num<100){
    for($i=2;$i<=($num/2);$i++){
        if($num%$i==0){
            $flag=1;
            last;
        }
    }
    if ($flag==0){
        print "\t\t\t$num\n";
    }
    $flag = 0;
    $num++;
}