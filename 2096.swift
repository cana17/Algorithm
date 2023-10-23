let n = Int(readLine()!)!
var arr = [[Int]]()
for _ in 0..<n {
    let num = readLine()!.split(separator: " ").map{ Int($0)! }
    arr.append(num)
}

var dpMax = Array(repeating: Array(repeating: 0, count: 3), count: n)
var dpMin = Array(repeating: Array(repeating: 0, count: 3), count: n)

dpMax[0] = arr[0]
dpMin[0] = arr[0]

for i in 1..<n {
    dpMax[i][0] = max(dpMax[i-1][0], dpMax[i-1][1]) + arr[i][0]
    dpMax[i][1] = max(dpMax[i-1][0], dpMax[i-1][1], dpMax[i-1][2]) + arr[i][1]
    dpMax[i][2] = max(dpMax[i-1][1], dpMax[i-1][2]) + arr[i][2]

    dpMin[i][0] = min(dpMin[i-1][0], dpMin[i-1][1]) + arr[i][0]
    dpMin[i][1] = min(dpMin[i-1][0], dpMin[i-1][1], dpMin[i-1][2]) + arr[i][1]
    dpMin[i][2] = min(dpMin[i-1][1], dpMin[i-1][2]) + arr[i][2]
}

print(dpMax[n-1].max()!, dpMin[n-1].min()!)