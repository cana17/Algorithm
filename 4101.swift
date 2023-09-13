while true {
    let n = readLine()!.split(separator: " ").map{ Int($0)! }
    if n == [0, 0] { break }
    print(n[0] > n[1] ? "Yes" : "No")
}