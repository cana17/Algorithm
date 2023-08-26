var arr = [Int]()
var sum = 0
for _ in 0..<9 {
    let tall = Int(readLine()!)!
    arr.append(tall)
    sum += tall
}
arr.sort()

loop: for i in 0..<8 {
    for j in i+1..<9 {
        if sum - arr[i] - arr[j] == 100 {
            for k in 0..<9 {
                if k != i && k != j {
                    print(arr[k])
                }
            }
            break loop
        }
    }
}