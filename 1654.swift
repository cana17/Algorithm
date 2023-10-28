let input = readLine()!.split(separator: " ").map{ Int($0)! }
let (k, n) = (input[0], input[1])

var lanArr = [Int]()

for _ in 0..<k {
    lanArr.append(Int(readLine()!)!)
}

var start = 1
var end = lanArr.max()!

while start <= end {
    var count = 0
    let mid = (start + end) / 2

    // Check Condition
    for i in 0..<k{
        count += (lanArr[i] / mid)
    }

    if count < n {
        end = mid - 1
    } else {
        start = mid + 1
    }
}
print(start-1)