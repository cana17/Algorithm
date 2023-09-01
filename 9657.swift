let n = Int(readLine()!)!
var dp: [Int] = Array(repeating: 0, count: 1001)
dp[2] = 1

for i in 5...1000 {
    dp[i] = min(dp[i-1]^1, dp[i-3]^1, dp[i-4]^1)
}
print(dp[n] == 0 ? "SK":"CY")