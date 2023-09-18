import Foundation

let n = Int(readLine()!)!
var arr = [Int]()
var dict = [Int:Int]()

//0. 입력
for _ in 0..<n {
    let input = Int(readLine()!)!
    arr.append(input)
    dict[input, default: 0] += 1
}

//1. 산술평균
let mean = Double(arr.reduce(0, +)) / Double(n)
print(Int(round(mean)))

//2. 중앙값
arr.sort()
let median = arr[n/2]
print(median)

//3. 최빈값
var mode = [Int]()
var temp = 0
for (key, value) in dict {
    if value > temp {
        mode = [key]
        temp = value
    } else if value == temp {
        mode.append(key)
    }
}
mode.sort()
print(mode.count > 1 ? mode[1] : mode[0] )

//4. 범위
let range = arr[n-1] - arr[0]
print(range)