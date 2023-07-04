let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let a = input[0]
let b = input[1]

// prime은 소수를 의미
var prime = [Bool](repeating: true, count: b + 1)
prime[0] = false
prime[1] = false

var p = 2
while p * p <= b {
    if prime[p] {
        var i = p * p
        while i <= b {
            prime[i] = false // 소수가 아닐경우 false
            i += p
        }
    }
    p += 1
}

for j in a...b {
    if prime[j] {
        print(j)
    }
}
