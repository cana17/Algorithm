let n = Int(readLine()!)!
for _ in 0..<n {
    let number = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
    print(number[0]+number[1])
}