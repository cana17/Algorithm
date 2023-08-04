var arr = [[String]]()

for _ in 1...5 {
    let input = readLine()!.map { String($0) }
    arr.append(input)
}

var answer = ""

for j in 0..<15 {
    for i in 0..<5 {
        if i < arr.count && j < arr[i].count {
            answer.append(arr[i][j])
        }
    }
}

print(answer)