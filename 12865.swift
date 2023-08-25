let input = readLine()!.split(separator: " ").map { Int($0)! }
let (n,k) = (input[0], input[1])

var dp = [Int](repeating: 0, count: k+1)

for _ in 0..<n {
    let stuff = readLine()!.split(separator: " ").map { Int($0)! }
    let (w,v) = (stuff[0], stuff[1])
    
    for i in (0...k).reversed() {
        if w <= i {
            dp[i] = max(dp[i], dp[i-w] + v)
        }
    }
}
print(dp[k])