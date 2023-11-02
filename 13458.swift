let n = Int(readLine()!)!
var student = readLine()!.split(separator: " ").map { Int($0)! }
let supervisor = readLine()!.split(separator: " ").map { Int($0)! }

var count = 0

for i in 0..<n {
    student[i] -= supervisor[0]
    count += 1
}

for i in 0..<n {
    if student[i] > 0 {
        count += (student[i] % supervisor[1] == 0) ? student[i] / supervisor[1] : (student[i] / supervisor[1]) + 1
    }
}

print(count)