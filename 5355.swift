import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    let input = readLine()!.split(separator: " ")
    var n = Double(input[0])!
    for i in 1..<input.count {
        switch input[i] {
        case "@":
            n *= 3
        case "%":
            n += 5
        case "#":
            n -= 7
        default:
            break
        }
    }
    let answer = String(format: "%.2f", n)
    print(answer)
}