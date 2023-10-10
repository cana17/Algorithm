let n = Int(readLine()!)!
var arr = Array(repeating: 0, count: 101)
var cnt = 0
let customer = readLine()!.split(separator: " ").map{ Int($0)! }
for i in customer {
    if arr[i] == 1 {
        cnt += 1
    } else {
        arr[i] = 1
    }
}
print(cnt)