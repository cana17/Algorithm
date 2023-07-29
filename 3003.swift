let arr = [1, 1, 2, 2, 2, 8]
let inputArr = readLine()!.split(separator: " ").map{ Int($0)! }

var ans = [Int]()

for i in 0...5 {
    ans.append(arr[i] - inputArr[i])
}

print(ans.map { String($0) }.joined(separator: " "))