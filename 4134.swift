import Foundation

func isPrime(number: Int) -> Bool {
    if number <= 1 {
        return false
    }
    for i in 2..<Int(sqrt(Double(number))+1) {
        if number % i == 0 {
            return false
        }
    }
    return true
}

let t = Int(readLine()!)!

for _ in 0..<t {
    var n = Int(readLine()!)!
    while !isPrime(number: n) {
        n += 1
    }
    print(n)
}