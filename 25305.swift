let input = readLine()!.split(separator: " ").map{ Int($0)! }
let (n, k) = (input[0], input[1])

let score = readLine()!.split(separator: " ").map{ Int($0)! }.sorted(by: >)

print(score[k-1])