import Foundation

let t = Int(readLine()!)!
for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let floor = input[2] % input[0] == 0 ? input[0] : input[2] % input[0]
    let number = input[2] % input[0] == 0 ? input[2] / input[0] : input[2] / input[0] + 1

    print("\(floor)\(String(format: "%02d", number))")
}