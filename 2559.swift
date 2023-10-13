let nk = readLine()!.split(separator: " ").map{ Int($0)! }
let (n, k) = (nk[0], nk[1])

let temperature = readLine()!.split(separator: " ").map{ Int($0)! }

var windowSum = 0
var maxSum = Int.min

for i in 0..<n {
    windowSum += temperature[i]
    if i >= k-1 {
        maxSum = max(windowSum, maxSum)
        windowSum -= temperature[i-(k-1)]
    }
}
print(maxSum)