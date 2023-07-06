import Foundation

let n = Int(readLine()!)!
let input = readLine()!.components(separatedBy: " ").map { Int($0)! }.sorted()

var sum = 0
var total = 0

for i in 0..<input.count {
    sum += input[i]
    
    total += sum
}

print(total)