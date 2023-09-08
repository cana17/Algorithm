let input = readLine()!.split(separator: " ").map { Int($0)! }
var arr = Array(1...input[0])
var removeNum = input[1] - 1
var result = [Int]()

while true {
    result.append(arr.remove(at: removeNum))
    if arr.isEmpty { break }
    removeNum = (removeNum + input[1] - 1) % arr.count
}

let answer = result.map(String.init).joined(separator: ", ")
print("<" + answer + ">")