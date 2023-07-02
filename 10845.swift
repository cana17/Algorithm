import Foundation

let n = Int(readLine()!)!
var queue: [Int] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { String($0) }
    
    switch input.first! {
        
    case "push":
        queue.append(Int(input.last!)!)
        
    case "pop":
        queue.reverse()
        let poppedValue = queue.popLast() ?? -1
        queue.reverse()
        print(poppedValue)
        
    case "size":
        print(queue.count)
        
    case "empty":
        let isEmpty = queue.isEmpty ? "1" : "0"
        print(isEmpty)
    
    case "front":
        let frontValue = queue.first ?? -1
        print(frontValue)
    
    case "back":
        let backValue = queue.last ?? -1
        print(backValue)
        
    default:
        break
        
    }
}