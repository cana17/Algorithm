let n = Int(readLine()!)!
var dp = [[Int]]()
var sum = 0
for _ in 0..<n {
    let num = readLine()!.split(separator: " ").map{ Int($0)! }
    dp.append(num)
}

for i in (0..<n-1).reversed() {
    for j in 0..<dp[i].count {
        dp[i][j] += max(dp[i+1][j], dp[i+1][j+1])
    }
}

print(dp[0][0])