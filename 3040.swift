var arr = [Int]()
for _ in 0..<9 {
    let n = Int(readLine()!)!
    arr.append(n)
}

var sum = arr.reduce(0, +)

loop: for i in 0..<9 {
    for j in i+1..<9 {
        if sum - (arr[i] + arr[j]) == 100 {
            arr[i] = 0
            arr[j] = 0
            break loop
        }
    }
}

for i in arr {
    if i > 0 {
        print(i)
    }
}