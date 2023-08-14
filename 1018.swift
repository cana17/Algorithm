let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let m = input[1]

var arr = [[Bool]]()

for _ in 0..<n {
    arr.append(readLine()!.map({$0=="W" ? true : false}))
}

func count(startN: Int, startM: Int, leftTop: Bool) -> Int {
    var temp = leftTop
    var num = 0
    for i in 0..<8 {
        for j in 0..<8 {
            if arr[startN+i][startM+j] != temp {
                num += 1
            }
            temp.toggle()
        }
        temp.toggle()
    }
    return num
}

var minCnt = Int.max

for i in 0..<n-8+1 {
    for j in 0..<m-8+1 {
        minCnt = min(count(startN: i, startM: j, leftTop: true), minCnt)
        minCnt = min(count(startN: i, startM: j, leftTop: false), minCnt)
    }
}

print(minCnt)