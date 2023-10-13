let nx = readLine()!.split(separator: " ").map{ Int($0)! }
let (n, x) = (nx[0], nx[1])

let visitor = readLine()!.split(separator: " ").map{ Int($0)! }

var windowSum = 0
var sumArr = [Int]()
var maxSum = 0
var maxDay = 0

for i in 0..<n {
    windowSum += visitor[i]
    if i >= x-1 {
        sumArr.append(windowSum)
        maxSum = max(windowSum, maxSum)
        windowSum -= visitor[i-(x-1)]
    }
}

if maxSum == 0 {
    print("SAD")
} else {
    print(sumArr.max()!)

    for i in sumArr {
        if i == maxSum {
            maxDay += 1
        }
    }
    print(maxDay)
}