let n = Int(readLine()!)!
var arr = [Int]()

for _ in 0..<n {
    let price = Int(readLine()!)!
    arr.append(price)
}
arr.sort(by: >)

for i in 0..<n {
    if (i+1) % 3 == 0 {
        arr[i] = 0
    }
}
print(arr.reduce(0, +))