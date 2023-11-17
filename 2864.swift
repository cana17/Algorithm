import Foundation

let n = readLine()!.split(separator: " ").map{ String($0) }
let (a, b) = (n[0], n[1])

let min = Int(a.replacingOccurrences(of: "6", with: "5"))! + Int(b.replacingOccurrences(of:"6", with: "5"))!
let max = Int(a.replacingOccurrences(of:"5", with: "6"))! + Int(b.replacingOccurrences(of:"5", with: "6"))!

print(min, max)