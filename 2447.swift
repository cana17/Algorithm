func printStar(n: Int, pattern: [String]) {
    if n == 1 {
        pattern.forEach {
            print($0)
        }
        return
    }
    let side = pattern.map {
        $0 + $0 + $0
    }
    
    let space = pattern.map {
        $0 + String(repeating: " ", count: $0.count) + $0
    }
    printStar(n: n/3, pattern: side + space + side)
}

let n = Int(readLine()!)!
printStar(n: n, pattern: ["*"])