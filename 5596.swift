let a = readLine()!.split(separator: " ").map{ Int($0)! }.reduce(0, +)
let b = readLine()!.split(separator: " ").map{ Int($0)! }.reduce(0, +)
print(a > b ? a : b)