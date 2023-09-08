func gcd(_ x: Int, _ y: Int) -> Int {
    if y == 0 {
        return x
    }
    return gcd(y, x % y)
}

let n = Int(readLine()!)!
var arr = [Int]()
for _ in 0..<n {
    let input = Int(readLine()!)!
    arr.append(input)
}

var gap = 0
for i in 0..<n-1 {
    gap = gcd(gap, arr[i+1] - arr[i])
}

let tree = (arr.last! - arr.first!)/gap + 1
print(tree-n)