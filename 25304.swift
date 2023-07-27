let price = Int(readLine()!)!
let n = Int(readLine()!)!

var total = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    total += input[0]*input[1]
}

if price == total { print("Yes") }
else { print("No") }