let n = Int(readLine()!)!
var arr = [Int]()

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}
arr.sort()

var combo = 1

for i in 0..<n {
    var temp = 1
    for j in i+1..<n {
        if arr[j] - arr[i] < 5 { temp += 1 }
    }
    combo = max(combo, temp)
}
let answer = 5 - combo
print(answer)