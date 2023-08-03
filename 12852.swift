let n = Int(readLine()!)!

var dp: [Int] = Array(repeating: 0, count: n + 1)
var progress: [Int] = Array(repeating: 0, count: n + 1) // 계산과정 저장

dp[1] = 0

if n > 1 {
    for i in 2...n {
        dp[i] = dp[i - 1] + 1
        progress[i] = i - 1
        
        if i % 3 == 0 && dp[i] > dp[i / 3] + 1 {
            dp[i] = dp[i / 3] + 1
            progress[i] = i / 3
        }
        
        if i % 2 == 0 && dp[i] > dp[i / 2] + 1 {
            dp[i] = dp[i / 2] + 1
            progress[i] = i / 2
        }
    }
}

print(dp[n])

var current = n
var process = [String]()

while current > 1 {
    process.append("\(current)")
    current = progress[current]
}

process.append("1")

let printProcess = process.joined(separator: " ")
print(printProcess)