let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{ Int($0)! }
let findNum = Int(readLine()!)!

var count = 0

for i in 0..<n{
    if arr[i] == findNum {
        count += 1
    }
}
print(count)