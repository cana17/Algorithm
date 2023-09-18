import Foundation

var arr = [Int]()
let m = Int(readLine()!)!
let n = Int(readLine()!)!

for i in m...n {
    let root = Int(sqrt(Double(i)))
    if i == root * root {
        arr.append(i)
    }
}
print(arr.isEmpty ? -1 : "\(arr.reduce(0, +))\n\(arr.min()!)" )