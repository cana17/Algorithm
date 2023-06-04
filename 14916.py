n = int(input())

change = 0
i = 0
while True:
    if n % 5 == 0: 
        change += n // 5
        break
    else:
        n -= 2  
        change += 1

    if n < 0:
        break
if n<0:	
    print(-1)			
else:
    print(change)