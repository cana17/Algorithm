var arr = [String]()
let input = readLine()!.map{ String($0) }

for i in 0..<input.count {
    var word = ""
    for j in i..<input.count {
        word += input[j]
    }
    arr.append(word)
}
arr.sort()

for word in arr {
    print(word)
}

//let word = readLine()!
//print(word.enumerated().map{ word.dropFirst($0.offset)}.sorted(by: <).joined(separator: "\n"))