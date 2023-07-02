import Foundation

let n = Int(readLine()!)!
var stack: [Int] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { String($0) }
    
    switch input.first! {
        
    case "push":
        stack.append(Int(input.last!)!)
        
    case "pop":
        let poppedValue = stack.popLast() ?? -1
        print(poppedValue)
        
    case "size":
        print(stack.count)
        
    case "empty":
        let isEmpty = stack.isEmpty ? "1" : "0"
        print(isEmpty)
        
    case "top":
        let topValue = stack.last ?? -1
        print(topValue)
        
    default:
        break
        
    }
    
}
