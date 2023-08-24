func factorial(_ n: Int) -> Int {
    if n == 0 {
        return 1
    }
    return n * factorial(n - 1)
}

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let (n,k) = (input[0], input[1])

print(factorial(n) / (factorial(k)*factorial(n-k)))