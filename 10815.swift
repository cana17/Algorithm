let n = Int(readLine()!)!
let nSet = Set(readLine()!.split(separator: " ").map { Int($0)! })
let m = Int(readLine()!)!
let mArr = readLine()!.split(separator: " ").map { Int($0)! }

for num in mArr {
    print(nSet.contains(num) ? 1 : 0 , terminator: " ")
}