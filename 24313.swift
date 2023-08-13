let f = readLine()!.split(separator: " ").map{ Int($0)! }
let c = Int(readLine()!)!
let n = Int(readLine()!)!

let a1 = f[0]
let a0 = f[1]

var fn = a1 * n + a0
var gn = n

if fn <= c * gn && c >= a1 {
    print(1)
} else {
    print(0)
}