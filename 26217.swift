let n = Int(readLine()!)!
var answer = 0.0

for i in 1...n {
    answer += Double(n) * (1.0 / Double(i))
}
print(answer)