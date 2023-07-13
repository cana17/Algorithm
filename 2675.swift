let t = Int(readLine()!)!

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { $0 }
    let r = Int(input[0])!
    let s = input[1]
    
    print(s.map{ String(repeating: $0, count: r) }.joined())
}