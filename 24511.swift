var arr = [Int]()
var index = [Int]()
var result = [Int]()

let n = Int(readLine()!)!
let a = readLine()!.split(separator: " ").map{ Int($0)! }
let b = readLine()!.split(separator: " ").map{ Int($0)! }

let m = Int(readLine()!)!
var c = readLine()!.split(separator: " ").map{ Int($0)! }

for i in 0..<n {
    if a[i] == 0 {
        index.append(i)
    }
}
for i in index {
    arr.append(b[i])
}
c.reverse()
c += arr

for _ in 0..<m {
    result.append(c.popLast()!)
}
print(result.map{String($0)}.joined(separator: " "))