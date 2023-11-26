func gcd(_ a: Int, _ b: Int) -> Int {
  if b == 0 {
      return a
  }
  return gcd(b, a % b)
}

let n = readLine()!.split(separator: ":").map{ Int($0)! }
let a = gcd(n[0], n[1])

print("\(n[0]/a):\(n[1]/a)")