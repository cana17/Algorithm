let n = Int(readLine()!)!
var arr = Array(readLine()!.split(separator: " ").map { Int(String($0))! }.reversed())
var stack = [Int]()

var now = 1

while !arr.isEmpty {
    let person = arr.popLast()!
    
    if person == now {
        now += 1
        
        while !stack.isEmpty && stack.last! == now {
            _ = stack.popLast()!
            now += 1
        }
        
    } else {
        stack.append(person)
    }
}
print(stack.isEmpty ? "Nice" : "Sad")