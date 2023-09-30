let n = Int(readLine()!)!
var computers = 0
for _ in 0..<n {
    let plugs = Int(readLine()!)!
    computers += plugs
}
computers -= n-1
print(computers)