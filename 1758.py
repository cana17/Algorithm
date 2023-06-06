import sys
 
n = int(sys.stdin.readline())
 
arr = []
for i in range(n):
    arr.append(int(sys.stdin.readline()))
 
arr.sort(reverse=True)
 
tip = 0
for i in range(n):
    ans = arr[i] - i
    if ans < 0:
        break
    tip += arr[i] - i
 
print(tip)