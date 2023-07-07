import Foundation

let s = Int(readLine()!)!

var max = 0
var sum = 0

while sum <= s {
    max += 1
    sum += max
}

if sum > s {
    max -= 1
}

print(max)