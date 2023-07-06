import Foundation

let n = Int(readLine()!)!
var a = readLine()!.split(separator: " ").map({Int(String($0))!}).sorted(by: >)
var b = readLine()!.split(separator: " ").map({Int(String($0))!}).sorted(by: <)

var sum = 0

for _ in 0..<n {
    sum += a.removeLast() * b.removeLast()
}

print(sum)