i=0
j=0
x=0
x=int(input("Pyramid side: "))
while x not in range(1,9):
    print("Not betwen 1 and 8")
    x=int(input("Pyramid side: "))
for i in range(x):
    for j in range(2*x):
        if i+j < x-1 or j > x + i:
            print(" ", end="")
        else:
            print("#", end="")
    print("")