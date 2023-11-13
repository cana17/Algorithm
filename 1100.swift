let chessBoard = [[1,0,1,0,1,0,1,0],[0,1,0,1,0,1,0,1],[1,0,1,0,1,0,1,0],[0,1,0,1,0,1,0,1],[1,0,1,0,1,0,1,0],[0,1,0,1,0,1,0,1],[1,0,1,0,1,0,1,0],[0,1,0,1,0,1,0,1]]
var arr = [[String]]()

for _ in 0..<8 {
    let input = readLine()!.map{ String($0) }
    arr.append(input)
}

var count = 0

for i in 0..<8 {
    for j in 0..<8 {
        if chessBoard[i][j] == 1 && arr[i][j] == "F" {
            count += 1
        }
    }
}

print(count)