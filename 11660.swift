let input = readLine()!.split(separator: " ").map{ Int($0)! }
let (n,m) = (input[0], input[1])

var arr = [[Int]](repeating: [Int](repeating: 0, count: n+1), count: n+1)

for i in 1...n {
    let input = [0] + readLine()!.split(separator: " ").map{ Int($0)! }
    arr[i] = input
}

var dp = [[Int]](repeating: [Int](repeating: 0, count: n+1), count: n+1)

for i in 1...n {
    for j in 1...n {
        dp[i][j] = dp[i-1][j] + dp[i][j-1] - dp[i-1][j-1] + arr[i][j]
    }
}

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let (x1, y1, x2, y2) = (input[0], input[1], input[2], input[3])

    let answer = dp[x2][y2] - dp[x2][y1-1] - dp[x1-1][y2] + dp[x1-1][y1-1]
    print(answer)
}