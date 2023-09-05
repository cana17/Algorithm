let n = readLine()!.split(separator: " ").map{ Int($0)! }
let ans = 2*n[1] - n[0]
print(ans)