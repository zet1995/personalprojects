height= 0
k= 0
while 1 <= height or 8 >= height:
    try:
        height = int(input("Please enter your height (1 - 8) : "))
        if height in range(1,8):
            for i in range(1, height+1):
                for space in range(1, (height-i)+1):
                 print(end="  ")
   
                while k!=(2*i-1):
                    print("# ", end="")
                    k += 1
   
                k = 0
                print()
    except ValueError:
        print ("That wasn't an integer :(")