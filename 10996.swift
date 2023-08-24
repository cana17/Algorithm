let n = Int(readLine()!)!

if n == 1 {
    print("*")
}
else {
    for _ in 0..<n {
        print(String(repeating: "* ", count: (n+1)/2))
        print(String(repeating: " *", count: n/2))
    }
}