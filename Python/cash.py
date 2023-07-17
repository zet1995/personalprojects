change=0
quarters=25
dimes=10
nickels=5
pennies=1
rest= 0

while change <= 0:
    try:
        change=int(input("Change to give: "))
        if change <= 0:
            print("esti prost")
    except ValueError:
        print("Esti dobitoc")
        change=0
while change > 0:
    if change >= quarters:
        change = change -quarters 
    elif change >= dimes:
        change = change - dimes
    elif change >= nickels:
        change = change - nickels
    elif change>= pennies:
        change = change - pennies
    else:
        change = 0
    rest= rest + 1
print(rest)
