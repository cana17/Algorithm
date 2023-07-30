let t = Int(readLine()!)!

for _ in 0..<t {
    let word = readLine()!.map({String($0)})
    print(word.first!+word.last!)
}