let student = readLine()!.split(separator: " ").map{ Int($0)! }
var girl = student[0]
var boy = student[1]
let intern = student[2]

for _ in 0..<intern {
    if girl / 2 >= boy {
        girl -= 1
    } else {
        boy -= 1
    }
}
let result = min(girl / 2, boy)
print(result)