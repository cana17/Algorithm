for _ in 1...3 {
    let result = readLine()!.split(separator: " ").map{ Int($0)! }
    let count = result.reduce(0, +)
    
    switch count {
    case 0:
        print("D")
    case 1:
        print("C")
    case 2:
        print("B")
    case 3:
        print("A")
    case 4:
        print("E")
    default:
        continue
    }
}