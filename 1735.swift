// 최대공약수 구하는 함수
func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    }
    return gcd(b, a % b)
}

let x = readLine()!.split(separator: " ").map { Int($0)! }
let y = readLine()!.split(separator: " ").map { Int($0)! }

var a = x[0] * y[1] + x[1] * y[0]
var b = x[1] * y[1]

print(a/gcd(a, b),b/gcd(a, b))