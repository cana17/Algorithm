let input = readLine()!.split(separator: " ").map { Int($0)! }
var arr = Array(1...input[0])

for _ in 0..<input[1] {
    let num = readLine()!.split(separator: " ").map { Int($0)! }
    arr.swapAt(num[0] - 1, num[1] - 1)
}

let result = arr.map { String($0) }.joined(separator: " ")
print(result)