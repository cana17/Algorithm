let n = Int(readLine()!)!
var stairs = [Int]()

for _ in 0..<n {
    let point = Int(readLine()!)!
    stairs.append(point)
}
if n < 3 {
    print(stairs.reduce(0, +))
} else {
    var dp = Array(repeating: 0, count: n)
    dp[0] = stairs[0]
    dp[1] = stairs[0] + stairs[1]
    dp[2] = max(stairs[0], stairs[1]) + stairs[2]

    for i in 3..<n {
        dp[i] = max(dp[i-2], dp[i-3] + stairs[i-1]) + stairs[i]
    }
    print(dp[n-1])
}