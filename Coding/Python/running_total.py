def running_total ( eles ):
    sum = 0
    for n in eles:
        sum += n
        yield sum

elements = [1,2,3,4,5,6,7,8,9,10]#[5,15,23,68,91,12,35,46,81,3,12345,100,513,214,79,651,5,17,54,89]
running_total=running_total ( elements )

for total in running_total:
    print total