#input
cardNumber=input("Credit card number: ")
# print(cardNumber[4])

#Checksum
x=len(cardNumber)
i=x-1
even=[]
evenSum=0
odd=0

# print(cardNumber[i-1])
while i >= 0:
    # if i % 2 ==0:
    #print(cardNumber[i-1])
    if (x%2 +i%2)%2==0 :
        even.append(int(cardNumber[i])*2)
        # print(even)
    else:
        odd=int(cardNumber[i])+ odd
        # print(odd)
    i=i-1
# print(sum(even))    

for w in even:
    if w > 9:
        rest = w % 10
        cat = w // 10
        evenSum = evenSum + rest +cat
    else :
        evenSum = evenSum + w
    # print (evenSum)
total= evenSum + odd

#Check card lenght and starting digit
if total % 10 == 0:
    if len(cardNumber) == 15 and cardNumber.startswith("34") or cardNumber.startswith("37"):
        print("AMEX")
    elif len(cardNumber) ==16 and cardNumber.startswith("51") or cardNumber.startswith("52") or cardNumber.startswith("53") or cardNumber.startswith("54") or cardNumber.startswith("55"):
        print("MasterCard")
    elif len(cardNumber) == 13 or len(cardNumber) == 16 and cardNumber.startswith("4"):
        print("VISA")
else:
    print("INVALID")

#print AMEX, MASTERCARD, VISA or INVALID