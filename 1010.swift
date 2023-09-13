func bridge(_ n: Int, _ r: Int) -> Int{
    if n == r || r == 0{
        return 1
    }
    if dp[n][r] != 0{
        return dp[n][r]
    }
    dp[n][r] = bridge(n-1, r-1) + bridge(n-1, r)
    return dp[n][r]
}
let t = Int(readLine()!)!
var dp = Array(repeating: Array(repeating: 0, count: 31), count: 31)

for _ in 0..<t{
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    print(bridge(input[1], input[0]))
}