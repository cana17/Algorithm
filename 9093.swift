let n = Int(readLine()!)!
for _ in 0..<n {
    let word = readLine()!.split(separator: " ").map{String($0.reversed())}.joined(separator: " ")
    print(word)
}