func balmer() {
  let c = Double(windowSum) * 0.001
  if c >= 0.129 && c <= 0.138 {
      timeLast += 1
  }
}

let nl = readLine()!.split(separator: " ").map{ Int($0)! }
let (n, l) = (nl[0], nl[1])

let alcohol = readLine()!.split(separator: " ").map{ Int($0)! }

var windowSum = 0
var timeLast = 0

for i in 0..<n {
  windowSum += alcohol[i]
  if i >= l-1 {
      balmer()
      windowSum -= alcohol[i-(l-1)]
  } else {
      balmer()
  }
}
print(timeLast)