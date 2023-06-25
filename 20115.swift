let n = Int(readLine()!)!
var drink = readLine()!.split(separator: " ").map {Double(String($0))!}.sorted()
var sum = 0.0

for i in 0..<n-1 {
    sum += drink[i]/2
}
sum += drink[n-1]

print(sum)