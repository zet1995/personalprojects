height=0
i=0
j=0
height=int(input("Numer of rows: "))
while height not in range(1,9):
    print("Please provide a number betwen 1 and 8 ")
    height=int(input("Number of rows: "))
for i in range(height):
    for j in range(height):
        if i + j < height - 1:
            print(" ", end="" )
        else:
            print("#", end="")
    print("")