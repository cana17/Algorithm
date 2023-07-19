let input = readLine()!.split(separator: " ").map{ Int($0)! }
let (a, b, v) = (input[0], input[1], input[2])

let day = (v - b - 1) / (a - b) + 1
print(day)