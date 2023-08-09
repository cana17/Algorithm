let m = Int(readLine()!)!
let n = Int(readLine()!)!
var prime = [Int]()

for num in m...n {
    var isPrime = true
    
    if num == 1 { continue }
    
    for i in 2..<num {
        if num % i == 0 {
            isPrime = false
            break
        }
    }
    if isPrime {
        prime.append(num)
    }
}
if prime.isEmpty {
    print(-1)
}
else {
    print(prime.reduce(0, +))
    print(prime.min()!)
}