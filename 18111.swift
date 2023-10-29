let input = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m, b) = (input[0], input[1], input[2])

var tempArr = [[Int]]()

for _ in 0..<n {
    let blockHeight = readLine()!.split(separator: " ").map { Int($0)! }
    tempArr.append(blockHeight)
}

var blockArr = tempArr.joined().compactMap { $0 }

var time = Int.max
var height = 0

for i in 0...256 {
    var tempTime = 0
    var inventory = b

    for j in 0..<n * m {
        if blockArr[j] < i {
            tempTime += (i - blockArr[j])
            inventory -= (i - blockArr[j])
        } else {
            tempTime += 2 * (blockArr[j] - i)
            inventory += (blockArr[j] - i)
        }
    }

    if inventory >= 0 {
        if tempTime <= time {
            time = tempTime
            height = i
        }
    }
}

print(time, height)