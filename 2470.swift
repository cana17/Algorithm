let n = Int(readLine()!)!
let liquid = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

var start = 0
var end = n - 1

var ans = [0, 0]
var sum = 2_000_000_000

while start < end {
    let total = liquid[start] + liquid[end]
    
    if abs(total) < sum {
        sum = abs(total)
        ans[0] = liquid[start]
        ans[1] = liquid[end]
    }
    
    if total < 0 {
        start += 1
    } else {
        end -= 1
    }
}
print(ans[0], ans[1])