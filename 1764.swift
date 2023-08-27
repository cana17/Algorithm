let n = readLine()!.split(separator: " ").map { Int($0)! }
var setN = Set<String>()
var setM = Set<String>()

for _ in 0..<n[0] {
    let name = readLine()!
    setN.insert(name)
}

for _ in 0..<n[1] {
    let name = readLine()!
    setM.insert(name)
}

let answer = Array(setN.intersection(setM)).sorted()

// 정답출력
print(answer.count)
answer.forEach {print($0)}