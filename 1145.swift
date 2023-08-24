let n = readLine()!.split(separator: " ").map{ Int($0)! }
var ans = 0
var cnt = 0

while cnt < 3 {
    cnt = 0
    ans += 1
    
    for i in n {
        if ans % i == 0 {
            cnt += 1
        }
    }
}
print(ans)