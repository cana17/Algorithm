let n = Int(readLine()!)!
var input = [Int]()

for _ in 1...n {
    input.append(Int(readLine()!)!)
}
input.sort()

for i in input {
    print(i)
}