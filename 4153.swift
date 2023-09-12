while true {
    let n = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
    if n == [0, 0, 0] { break }
    var isRight: Bool = false
    
    if n[2]*n[2] == n[0]*n[0] + n[1]*n[1] {
        isRight = true
    }
    print(isRight ? "right" : "wrong")
}