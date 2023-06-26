import Foundation

let n = Int(readLine()!)!
let weights = readLine()!.split(separator: " ").compactMap { Int($0) }.sorted()

var maxWeightSum = 0

for i in 0..<n/2 {
    let weightSum = weights[i] + weights[n-i-1]
    maxWeightSum = max(maxWeightSum, weightSum)
}

if n % 2 == 1 {
    maxWeightSum = max(maxWeightSum, weights[n/2] * 2)
}

print(maxWeightSum)
