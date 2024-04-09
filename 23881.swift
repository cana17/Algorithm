let input = readLine()!.split(separator: " ").map{ Int($0)! }
let (n, k) = (input[0], input[1])

var arr = readLine()!.split(separator: " ").map{ Int($0)! }
var cnt = 0

for i in stride(from: n-1, to: 0, by: -1) {
    var maxIndex = 0

    for j in 0...i {
        if arr[maxIndex] < arr[j] {
            maxIndex = j
        }
    }
    if i != maxIndex {
        arr.swapAt(i, maxIndex)
        cnt += 1
        if cnt == k {
            print(arr[maxIndex], arr[i])
            break
        }
    }
}
if cnt < k {
    print(-1)
}