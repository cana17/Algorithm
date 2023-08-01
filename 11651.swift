let input = readLine()!.split(separator: " ").map { Int($0)! }
var arr = Array(1...input[0])

for _ in 0..<input[1] {
    let num = readLine()!.split(separator: " ").map { Int($0)! }
    var i = num[0] - 1
    var j = num[1] - 1

    // 주어진 범위의 배열을 역순으로 만드는 코드
    while i < j {
        arr.swapAt(i, j)
        i += 1
        j -= 1
    }
}

let result = arr.map { String($0) }.joined(separator: " ")
print(result)