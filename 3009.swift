let first = readLine()!.split(separator: " ").map { Int($0)! }
let second = readLine()!.split(separator: " ").map { Int($0)! }
let third = readLine()!.split(separator: " ").map { Int($0)! }
var fourth = [Int]()

for i in 0...1 {
    if first[i] != second[i] && first[i] != third[i]{
        fourth.append(first[i])
    }
    else if second[i] != first[i] && second[i] != third[i] {
        fourth.append(second[i])
    }
    else {
        fourth.append(third[i])
    }
    
}
print(fourth[0],fourth[1])