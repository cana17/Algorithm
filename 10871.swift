let input = readLine()!.split(separator: " ").map{ Int($0)! }
let arr = readLine()!.split(separator: " ").map{ Int($0)! }

var answerArr = [Int]()

for i in 0..<input[0] {
    if arr[i] < input[1] {
        answerArr.append(arr[i])
    }
}
print(answerArr.map { String($0) }.joined(separator: " "))