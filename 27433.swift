func factorial (_ n: Int) -> Int {
    if n == 0 { return 1 }
    return n * factorial(n-1)
}
print(factorial(Int(readLine()!)!))