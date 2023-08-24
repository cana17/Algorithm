let n = Int(readLine()!)!
let num = readLine()!.split(separator: " ").map{ Int($0)! }

print(num.min()!*num.max()!)