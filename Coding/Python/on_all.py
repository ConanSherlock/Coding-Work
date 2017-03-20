def on_all ( eles ):
    new_eles = []
    for i in eles:
        new_eles.append(squares(i))
    return new_eles

def squares(num):
    square = num*num
    return square
        
elements = [1, 2, 3, 4, 5]
print elements
new_eles = on_all ( elements )
print new_eles