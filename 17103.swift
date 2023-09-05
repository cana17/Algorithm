import Foundation

var isPrime = [Bool](repeating: true, count: 1_000_000 + 1)
isPrime[0] = false
isPrime[1] = false

for i in 2..<Int(sqrt(Double(1_000_000)) + 1) {
    if isPrime[i] {
        var j = 2
        while i * j <= 1_000_000 {
            isPrime[i * j] = false
            j += 1
        }
    }
}

let t = Int(readLine()!)!
for _ in 0..<t {
    let n = Int(readLine()!)!
    var goldBach = 0
    
    for i in 2...n/2 {
        if isPrime[i] && isPrime[n - i] {
            goldBach += 1
        }
    }
    print(goldBach)
}