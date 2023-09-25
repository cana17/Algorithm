let day = Int(readLine()!)!
let carNumber = readLine()!.split(separator: " ").map{ Int($0)! }
var sum = 0
for i in carNumber {
    if i == day {
        sum += 1
    }
}
print(sum)

//더 짧은 코드
//let n = readLine()!
//print(readLine()!.split { $0==" " }.filter { $0 == n }.count)