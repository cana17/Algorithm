let n = Int(readLine()!)!
var arr = [[Int]](repeating: Array(repeating: 0,count:100), count: 100)
var sum = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let (x, y) = (input[0], input[1])

    for i in x..<x+10 {
        for j in y..<y+10 {
            arr[i][j] += 1
        }
    }
}

for i in 0..<100 {
    for j in 0..<100 {
        if arr[i][j] >= 1 {
            sum += 1
        }
    }
}

print(sum)