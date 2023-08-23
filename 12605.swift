let n = Int(readLine()!)!

for i in 1..<n+1 {
    var str = readLine()!.split(separator: " ")
    str.reverse()
    print("Case #\(i): \(str.joined(separator: " "))")
}