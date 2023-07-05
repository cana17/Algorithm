let input = readLine()!.split(separator: "-")
var answer = 0

for i in input[0].split(separator: "+") {
    answer += Int(i)!
}

for i in input[1...] {
    for j in i.split(separator: "+") {
        answer -= Int(j)!
    }
}

print(answer)