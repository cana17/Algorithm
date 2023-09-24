let ab = readLine()!.split(separator: " ").map{ Int($0)! }
let (a, b) = (ab[0], ab[1])
var n = 1
var arr = [Int]()

loop: while true {
    for _ in 1...n {
        arr.append(n)
        if arr.count == b {
            let subArr = arr[a-1...b-1]
            print(subArr.reduce(0, +))
            break loop
        }
    }
    n += 1
}