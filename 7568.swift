let n = Int(readLine()!)!
var arr = [[Int]](repeating: [0, 0], count: n)
var rankArr = [Int](repeating: 1, count: n)

for i in 0..<n {
    arr[i] = readLine()!.split(separator: " ").compactMap { Int($0) }
}

for i in 0..<n {
    for j in 0..<n {
        if arr[i][0] < arr[j][0] && arr[i][1] < arr[j][1] {
            rankArr[i] += 1
        }
    }
}

for rank in rankArr {
    print("\(rank)", terminator: " ")
}